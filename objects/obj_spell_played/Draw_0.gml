/// @description Insert description here
// You can write your code in this editor

if big_mode = false {
	draw_sprite_general(spell_sprite,0,57,62,333,336,x-60,y-60,0.37,0.37,0,c_white,c_white,c_white,c_white,1);
	draw_sprite_ext(s_spell_frame,0,x,y,0.4,0.4,0,c_white,1);
	
	if moused = true && target_arrows_enabled = true {
		depth = -900;
		if instance_exists(target_1) {
			if target_1.position != "end_turn" {
				if target_1.is_locale = true {
					target_x = target_1.x + 112;
					target_y = target_1.y + 184;
				} else {
					target_x = target_1.x;
					target_y = target_1.y;
				}
				var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
				if y < target_y {
					angle_to_target += 180;
				}
				var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
				if opp = false {
					draw_sprite_ext(s_target_arrow_panel,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				} else {
					draw_sprite_ext(s_target_arrow_panel_red,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				}
				if angle_to_target > 90 or angle_to_target < -90 {
					angle_to_target += 180;
				}
				draw_text_transformed_color(x+2.92*(target_x - x)/5,y+2.92*(target_y - y)/5,"1",distance_to_target/450,distance_to_target/450,angle_to_target,c_white,c_white,c_white,c_white,1)
			}
		}
		if instance_exists(target_2) {
			if target_2.position != "end_turn"{
				if target_2.is_locale = true {
					target_x = target_2.x + 112;
					target_y = target_2.y + 184;
				} else {
					target_x = target_2.x;
					target_y = target_2.y;
				}
				var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
				if y < target_y {
					angle_to_target += 180;
				}
				var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
				if opp = false {
					draw_sprite_ext(s_target_arrow_panel,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				} else {
					draw_sprite_ext(s_target_arrow_panel_red,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				}
				if angle_to_target > 90 or angle_to_target < -90 {
					angle_to_target += 180;
				}
				draw_text_transformed_color(x+2.92*(target_x - x)/5,y+2.92*(target_y - y)/5,"2",distance_to_target/450,distance_to_target/450,angle_to_target,c_white,c_white,c_white,c_white,1)
			}
		}
		if instance_exists(target_3) {
			if target_3.position != "end_turn" {
				if target_3.is_locale = true {
					target_x = target_3.x + 112;
					target_y = target_3.y + 184;
				} else {
					target_x = target_3.x;
					target_y = target_3.y;
				}
				var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
				if y < target_y {
					angle_to_target += 180;
				}
				var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
				if opp = false {
					draw_sprite_ext(s_target_arrow_panel,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				} else {
					draw_sprite_ext(s_target_arrow_panel_red,0,x,y,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
				}
				if angle_to_target > 90 or angle_to_target < -90 {
					angle_to_target += 180;
				}
				draw_text_transformed_color(x+2.92*(target_x - x)/5,y+2.92*(target_y - y)/5,"3",distance_to_target/450,distance_to_target/450,angle_to_target,c_white,c_white,c_white,c_white,1)
			}
		}
	} else {
		depth = -800;
	}

	if (moused) && (tooltip_created = false) {
		alarm[2] = 100;
		tooltip_created = true;
	}
	
	if (moused = false) && (tooltip_created = true) {
		if tooltip_inst != noone {
			instance_destroy(tooltip_inst);
		}
		tooltip_created = false;
	}
} else {
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	//draw_sprite_ext(global.rarity_list[rarity][element][1][0][card_index],0,1513,723,2,2,0,c_white,1);
	
	if tooltip_extra = true {
		var tooltip_string = string(tooltip_counter) + " " + tooltip_text;
		if tooltip_text_plural = true && tooltip_counter!=1 {
			tooltip_string += "s";
		}
		draw_set_font(Empower_font);
		draw_sprite_ext(s_effect_box,0,1520+4,720+590,1.505,0.6,0,c_white,1);
		draw_text_colour(1520,720+50+590,tooltip_string,c_maroon,c_maroon,c_maroon,c_maroon,1);
	}
	
	var _mouse_x = mouse_x - x;
	var _mouse_y = mouse_y - y;

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
}