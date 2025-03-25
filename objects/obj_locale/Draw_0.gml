/// @description Draw a card highlight when moused over.
// If the player is mousing over this card, make it moused.


//if (global.player_enabled = true) {

//	if (moused) && (obj_mouse_manager.grabbed_card = self) && (border_active = false)
//	{
//		// Draw pfx around the card.
//		global._pfx_border_top = part_system_create(pfx_border_top);
//		part_system_position(global._pfx_border_top, x+border_x_top, y+ border_y_top);
//		part_system_depth(global._pfx_border_top,-1000);
//		global._pfx_border_right = part_system_create(pfx_border_right);
//		part_system_position(global._pfx_border_right, x+border_x_right, y+ border_y_right);
//		part_system_depth(global._pfx_border_right,-1000);
//		global._pfx_border_bottom = part_system_create(pfx_border_bottom);
//		part_system_position(global._pfx_border_bottom, x+border_x_bottom, y+ border_y_bottom);
//		part_system_depth(global._pfx_border_bottom,-1000);
//		global._pfx_border_left = part_system_create(pfx_border_left);
//		part_system_position(global._pfx_border_left, x+border_x_left, y+ border_y_left);
//		part_system_depth(global._pfx_border_left,-1000);
//		border_active = true;
//	}
//	else if (border_active = true) && (obj_mouse_manager.grabbed_card = self)
//	{	
//		part_system_position(global._pfx_border_top, x+border_x_top, y+border_y_top);
//		part_system_position(global._pfx_border_right, x+border_x_right, y+border_y_right);
//		part_system_position(global._pfx_border_bottom, x+border_x_bottom, y+border_y_bottom);
//		part_system_position(global._pfx_border_left, x+border_x_left, y+border_y_left);
//	}
//	else if (border_active = true) && (obj_mouse_manager.grabbed_card != self)
//	{
//		part_system_destroy(global._pfx_border_top);
//		part_system_destroy(global._pfx_border_right);
//		part_system_destroy(global._pfx_border_bottom);
//		part_system_destroy(global._pfx_border_left);
//		border_active = false
//	}
//}


if big_mode = true {
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	
	if tooltip_extra = true {
		var tooltip_string = string(tooltip_counter) + " " + tooltip_text;
		if tooltip_text_plural = true && tooltip_counter!=1 {
			tooltip_string += "s";
		}
		draw_set_font(Empower_font);
		draw_sprite_ext(s_effect_box,0,1520+4,720+590,1.505,0.6,0,c_white,1);
		draw_text_colour(1520,720+50+590,tooltip_string,c_maroon,c_maroon,c_maroon,c_maroon,1);
	}
}

if playing = true {
	if play_element_seq = noone {
		if element = 0 {
			play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_ruby);
		} else if element = 1 {
			play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_pearl);
		} else if element = 2 {
			play_element_seq = layer_sequence_create("above_cards",x,y,seq_play_onyx);
		}
		alpha = 0;
	}
	draw_sprite_general(global.rarity_list[rarity][element][0][1][card_index],0,60,67,330,443,x-164,y-222,play_scale,play_scale,0,c_white,c_white,c_white,c_white,1);
	
	if sprite_gap > sprite_height/2 {
		alpha = clamp(alpha + 0.1,0,1);
		var channel = global.rarity_list[rarity][element][0][3][card_index];
		var health_locale = global.rarity_list[rarity][element][0][2][card_index];
		draw_sprite_ext(s_locale_stats,0,x-164,y-222+293*(play_scale_stats+0.5),0.68*(play_scale_stats+0.5),0.68*(play_scale_stats+0.5),0,c_white,alpha)
		draw_sprite_ext(global.element_sprite_list[element],0,x-164-5*(play_scale_stats+0.5),y-222+308*(play_scale_stats+0.5),0.08*(play_scale_stats+0.5),0.08*(play_scale_stats+0.5),0,c_white,alpha)
		if channel > 9 {
			draw_text_ext_transformed_color(x-164+55*(play_scale_stats+0.5),y-222 + 309*(play_scale_stats+0.5),channel,20,200,0.7*(play_scale_stats+0.5),1*(play_scale_stats+0.5),0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		} else {
			draw_text_colour(x-164+55*(play_scale_stats+0.5),y-222 + 328*(play_scale_stats+0.5),channel,c_maroon,c_maroon,c_maroon,c_maroon,alpha);
		}
		draw_set_font(Empower_font)
		if health_locale > 9 {
			draw_text_ext_transformed_color(x-164+203*(play_scale_stats+0.5),y-222 + 309*(play_scale_stats+0.5),health_locale,20,200,0.7*(play_scale_stats+0.5),1*(play_scale_stats+0.5),0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		} else {
			draw_text_colour(x-164+203*(play_scale_stats+0.5),y-222 + 328*(play_scale_stats+0.5),health_locale,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		}
		draw_sprite_ext(s_strength_logo,0,x-164+168*(play_scale_stats+0.5),y-222+328*(play_scale_stats+0.5),0.17*(play_scale_stats+0.5),0.17*(play_scale_stats+0.5),0,c_white,alpha)
		draw_sprite_ext(global.rarity_gem_list[rarity],0,x-164+84*(play_scale_stats+0.5),y-222+299*(play_scale_stats+0.5),0.18*(play_scale_stats+0.5),0.18*(play_scale_stats+0.5),0,c_white,alpha)
	}
	
	sprite_gap = clamp(sprite_gap + 7,0,3*sprite_height/4);
	if sprite_gap < sprite_height/2 {
		draw_sprite_general(sprite_index,0,0,0,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y-sprite_height/2,1,1,0,c_white,c_white,c_white,c_white,1);
		draw_sprite_general(sprite_index,0,0,sprite_height/2+sprite_gap,sprite_width,sprite_height/2-sprite_gap,x-sprite_width/2,y+sprite_gap,1,1,0,c_white,c_white,c_white,c_white,1);
	}
	
	if sprite_gap = 3*sprite_height/4 {
		play_scale = clamp(play_scale - 0.03,0.67,1);
		play_scale_stats = clamp(play_scale_stats - 0.06,0.5,1);
		x = lerp(x,locale_lane_x+164,0.3);
		y = lerp(y,locale_lane_y+222,0.3);
		layer_sequence_xscale(play_element_seq,play_scale);
		layer_sequence_yscale(play_element_seq,play_scale);
		layer_sequence_x(play_element_seq,x-(1-play_scale)*164);
		layer_sequence_y(play_element_seq,y-(1-play_scale)*222);
	}
} else {
	if moused = false {
		draw_self()
	} else {
		//draw_sprite_ext(s_black_border,0,x,y,image_xscale,image_yscale,0,c_white,1);
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
}