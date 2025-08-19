/// @description Draw art in locale zone
// You can write your code in this editor

if big_mode = false {
	if destroyed = false && fading = false {
		
		draw_sprite_general(global.rarity_list[initial_rarity][initial_element][0][1][card_index],0,60,67,330,443,x,y,card_sprite_scale,card_sprite_scale,0,c_white,c_white,c_white,c_white,1)

		//draw_sprite_ext(s_locale_stats,0,x,y+293,0.68,0.68,0,c_white,1)
		//draw_sprite_ext(global.element_sprite_list[element],0,x+25,y+308,0.08,0.08,0,c_white,1)
		//draw_text_colour(x+18,y + 328,channel,c_maroon,c_maroon,c_maroon,c_maroon,1);
		//draw_set_font(Empower_font)
		//draw_text_colour(x+111,y + 328,health_locale,c_maroon,c_maroon,c_maroon,c_maroon,1)
		//draw_sprite_ext(global.rarity_gem_list[rarity],0,x+159,y+299,0.18,0.18,0,c_white,1)
		
		//alpha = lerp(alpha,1,0.1);
		draw_sprite_ext(s_locale_stats,0,x,y+293,0.68,0.68,0,c_white,alpha)
		draw_sprite_ext(global.element_sprite_list[element],0,x+20,y+331,0.08,0.08,0,c_white,alpha)
		if channel > 9 {
			draw_text_ext_transformed_color(x+55,y + 309,channel,20,200,0.7,1,0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		} else {
			draw_text_colour(x+55,y + 328,channel,c_maroon,c_maroon,c_maroon,c_maroon,alpha);
		}
		draw_set_font(Empower_font)
		if health_locale > 9 {
			draw_text_ext_transformed_color(x+203,y + 309,health_locale,20,200,0.7,1,0,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		} else {
			draw_text_colour(x+203,y + 328,health_locale,c_maroon,c_maroon,c_maroon,c_maroon,alpha)
		}
		draw_sprite_ext(s_strength_logo,0,x+168,y+328,0.17,0.17,0,c_white,alpha)
		draw_sprite_ext(global.rarity_gem_list[rarity],0,x+84,y+299,0.18,0.18,0,c_white,alpha)
	
		//if (moused) && (tooltip_created = false) && effect_function_inst.has_effect != false {
		//	alarm[2] = 100;
		//	tooltip_created = true;
		//}

		if (moused = false) && (tooltip_created = true){
			if tooltip_inst != noone {
				instance_destroy(tooltip_inst);
			}
			tooltip_created = false;
		}

		if health_locale <= global.rarity_list[initial_rarity][initial_element][0][2][card_index]/2 && overwritten = false {
			draw_sprite_ext(s_cracks,0,x,y,0.49,0.5,0,c_white,1);
			if crack_dust = false {
				crack_sys = layer_sequence_create("effect_layer",x+112,y+184,seq_cracking);
				crack_dust = true;
				screenshake(10, 2, 0.4);
				alarm[1] = 90;
			}
		}
		
		if shielded = true {
			if alpha_shield < 0.01 {
				increment_shield = 0.01;
			} else if alpha_shield > 0.8 {
				increment_shield = -0.01;
			}
			alpha_shield = clamp(alpha_shield+increment_shield,0,1);
			draw_sprite_ext(s_shielded,0,x,y,0.50,0.51,0,c_white,alpha_shield);
		}
		
		if frozen = true {
			draw_sprite_ext(s_frozen,0,x,y,0.49,0.51,0,c_white,1);
		}
		
		if illusory = true {
			illusory = false;
			illusory_sys = part_system_create(Ps_Smoke_illusory);
			part_system_position(illusory_sys, x+112, y+184);
			part_system_depth(illusory_sys,-800);
		}
		
	}
} else {
	sprite_index = global.rarity_list[initial_rarity][initial_element][0][0][card_index];
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	//draw_sprite_ext(global.rarity_list[rarity][element][0][0][card_index],0,1513,723,2,2,0,c_white,1);
	
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