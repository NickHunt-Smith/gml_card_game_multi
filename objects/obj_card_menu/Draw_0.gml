
//var _mouse_x = mouse_x - x;
//var _mouse_y = mouse_y - y;

//flip: _mouse_y = 3*sprite_height

var _mouse_x = 0.5*view_wport[0] - x;
var _mouse_y = 0.5*view_hport[0] - y;

var _rotated_mouse_x = _mouse_x * dcos(image_angle) - _mouse_y * dsin(image_angle);
var _rotated_mouse_y = _mouse_x * dsin(image_angle) + _mouse_y * dcos(image_angle);

var _angle_goto_y = -(_rotated_mouse_y / (sprite_height*image_yscale/2) * max_angle);
yrotation -= (yrotation - _angle_goto_y)/5;

var _angle_goto_x = _rotated_mouse_x / (sprite_width*image_xscale/2) * max_angle;
xrotation -= (xrotation - _angle_goto_x)/5;
	
var _corners_3d = [
{// Top Left
xx : -sprite_xoffset, 
yy : -sprite_yoffset,
zz : 0
},
{// Top Right
xx : sprite_xoffset, 
yy : -sprite_yoffset,
zz : 0
},
{// Bottom Left
xx : -sprite_xoffset, 
yy : sprite_yoffset,
zz : 0
},
{// Bottom Right
xx : sprite_xoffset, 
yy : sprite_yoffset,
zz : 0
}];
	
// Calculate the rotation matrix
var _rotation_matrix = matrix_build(0,0,0,-yrotation,-xrotation,0,-1,-1,1);

// Keep track of the origin of the projected card
var _origin_3d = perspective_divide([[0,0,0]]);

// Get the card's corners
var _corners_3d = get_corners_3d();
var _projected_corners = array_create(array_length(_corners_3d));
// Populate the projected corners list with the rotated card corners
for (var _i = 0; _i < array_length(_corners_3d); ++_i) {
var _corner = _corners_3d[_i];

var _transformed = matrix_transform_vertex(_rotation_matrix, _corner[0], _corner[1], _corner[2]);

_projected_corners[_i] = _transformed;
}

// Perspective divide the points to bring them to the screen space
_projected_corners = perspective_divide(_projected_corners);
// Subtract the origin so the corners are centered around the origin of the 2d card
_projected_corners = [
[_projected_corners[0][0]-_origin_3d[0][0], _projected_corners[0][1]-_origin_3d[0][1]],
[_projected_corners[1][0]-_origin_3d[0][0], _projected_corners[1][1]-_origin_3d[0][1]],
[_projected_corners[3][0]-_origin_3d[0][0], _projected_corners[3][1]-_origin_3d[0][1]],
[_projected_corners[2][0]-_origin_3d[0][0], _projected_corners[2][1]-_origin_3d[0][1]]
]

// Rotate the projected corners in case the card has a non zero image angle
var _rotated_corners = array_create(array_length(_projected_corners));
for (var _i = 0; _i < array_length(_projected_corners); ++_i) {
	var _x = _projected_corners[_i][0];
var _y = _projected_corners[_i][1];
_rotated_corners[_i][0] = _x * dcos(-image_angle+180) - _y * dsin(-image_angle+180);
_rotated_corners[_i][1] = _x * dsin(-image_angle+180) + _y * dcos(-image_angle+180);
}

// Drawing the actual card sprite with the correct projected and rotated corners
draw_sprite_pos_fixed(sprite_index, 0,

// Top left corner 
x-_rotated_corners[0][0],
y-_rotated_corners[0][1],

// Top right corner
x-_rotated_corners[1][0],
y-_rotated_corners[1][1],

// Bottom right corner
x-_rotated_corners[2][0],
y-_rotated_corners[2][1],

// Bottom left corner
x-_rotated_corners[3][0],
y-_rotated_corners[3][1],
	-1,image_alpha
);

image_xscale += 0.003;
image_yscale += 0.003;