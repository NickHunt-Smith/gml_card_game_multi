
if scene_playing = false {
	var struct_var_name = "tutorial" + string(tutorial_step);
	if variable_struct_exists(encounter_story,struct_var_name) {
		curr_scene = encounter_story[$ struct_var_name];
		narrator = curr_scene.narrator;
		if curr_scene.character_art = false {
			character_art = false;
		} else {
			character_art = asset_get_index(curr_scene.character_art);
			character_name = curr_scene.character_name;
		}
		scene_playing = true;
	}
}

if text_rolling = false {
	var struct_var_name = "text" + string(_text);
	if variable_struct_exists(curr_scene,struct_var_name)  {
		chars_revealed = 0;
		text = curr_scene[$ struct_var_name];
		if narrator = false {
			text = string_wrap(text, text_width_character);
		} else {
			text = string_wrap(text, text_width_narrator);
		}
		text_rolling = true;
		_text += 1;
	}
}
	
draw_sprite_ext(sprite_index,0,x,y+185*text_scale,0.4*text_scale,0.38*text_scale,0,c_white,alpha_story_frame);

if arrow = true {
	var arrow_x_offset = x+330;
	var arrow_y_offset = y+330;
	var angle_to_target = -arctan((target_x - arrow_x_offset)/(arrow_y_offset - target_y))*57.23;
	if arrow_y_offset < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - arrow_x_offset) + sqr(arrow_y_offset - target_y));
	draw_sprite_ext(s_target_arrow_panel,0,arrow_x_offset,arrow_y_offset,distance_to_target/1454,distance_to_target/1454,angle_to_target,c_white,1);
}
	
if character_art != false {
	draw_sprite_ext(character_art,0,x-190*text_scale,y+185*text_scale,0.105*text_scale,0.105*text_scale,0,c_white,alpha_story_portrait);
	draw_sprite_ext(s_story_portrait_frame,0,x-190*text_scale,y+185*text_scale,0.16*text_scale,0.16*text_scale,0,c_white,alpha_story_portrait);
	draw_sprite_ext(s_banner,0,x-190*text_scale,y+270*text_scale,0.118*text_scale,0.118*text_scale,0,c_white,alpha_story_portrait);
	draw_set_alpha(alpha_story_portrait);
	draw_set_font(Empower_font_story_portrait);
	draw_set_colour(c_maroon);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(x-190*text_scale,y+258*text_scale,character_name,text_scale,text_scale,0);
}

if alpha_story_portrait = 1 or (narrator = true && alpha_story_frame = 1) {
	
	chars_revealed += reveal_speed;
	chars_revealed = min(chars_revealed, string_length(text)); 
	var _text_current = string_copy(text, 1, chars_revealed);
	
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_maroon);
	
	if narrator = true {
		draw_set_font(Empower_font_story);
		draw_text_transformed(x-270*text_scale, y+80*text_scale, _text_current,text_scale,text_scale,0);
	} else {
		draw_set_font(Empower_font_story_character);
		draw_text_transformed(x-85*text_scale, y+80*text_scale, _text_current,text_scale,text_scale,0);
	}
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
}

if chars_revealed = string_length(text) && narrator != "scene_transition" {
	if reverse = false {
		alpha_next_text = clamp(alpha_next_text-0.005,0.6,1);
	} else {
		alpha_next_text = clamp(alpha_next_text+0.005,0.6,1);
	}
	if alpha_next_text = 0.6 {
		reverse = true;
	}
	if alpha_next_text = 1 {
		reverse = false;
	}
	
	draw_sprite_ext(s_move_traingle,0,x+320*text_scale,y+185*text_scale,0.3*text_scale,0.3*text_scale,270,c_white,alpha_next_text);
}