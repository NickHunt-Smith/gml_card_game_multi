// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Perspective Divide
/// @functionperspective_divide(_vertices)
/// @param {Array[Any]}_verticesA 2d array with xyz in each array
/// @descriptionDo the perspective divide and return an array with the updated values
function perspective_divide(_vertices)
{
  var _result_array = array_create(array_length(_vertices))
  for (var _i = 0; _i < array_length(_vertices); _i++) {
    var _transformed = _vertices[_i];

    var _projection_matrix = matrix_build_projection_perspective(sprite_width,  sprite_height, sprite_width+500, 32000);

    _transformed = matrix_transform_vertex(_projection_matrix, _transformed[0],  _transformed[1], _transformed[2]);

    // Perform perspective division
    var _x = _transformed[0] / _transformed[2];
    var _y = _transformed[1] / _transformed[2];

    // Map to screen space
    var _screen_x = (_x + 1) * sprite_width / 2;
    var _screen_y = (_y + 1) * sprite_height / 2;

    // Save the final screen coordinates
    _result_array[_i] = [_screen_x, _screen_y];
  }
  return _result_array;
}

/// @functionget_corners_3d()
/// @descriptionReturn a corners_3d list with scale updated sprite offsets
function get_corners_3d() {
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
  // Turn corners_3d into a 4x4 array
  for (var _i = 0; _i < array_length(_corners_3d); ++_i) {
    _corners_3d[_i] = [_corners_3d[_i].xx, _corners_3d[_i].yy, _corners_3d[_i].zz];
  }
  return _corners_3d;
}