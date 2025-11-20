
if zoomed_in = true {
	if scene_playing = false {
		var struct_var_name = text_stage + string(_scene);
		if variable_struct_exists(encounter_story,struct_var_name) {
			curr_scene = encounter_story[$ struct_var_name];
			narrator = curr_scene.narrator;
			if curr_scene.locale_art = false {
				locale_art = false;
			} else {
				locale_art = asset_get_index(curr_scene.locale_art);
			}
			if curr_scene.character_art = false {
				character_art = false;
			} else {
				character_art = asset_get_index(curr_scene.character_art);
				character_name = curr_scene.character_name;
			}
			scene_playing = true;
			_scene += 1;
		} 	
	}

	if text_rolling = false && fade_in = true {
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
		} else {
			_text = 0;
			scene_playing = false;
		}
	}

	if fade_in = true {
		draw_sprite_ext(s_spell_background,0,x,y,10,10,0,c_black,alpha_mood_lighting);
		alpha_mood_lighting = clamp(alpha_mood_lighting + 0.005,0,0.85);
		
		if narrator != "end_story_transition" {
			draw_sprite_ext(sprite_index,0,x,y+185,0.4,0.38,0,c_white,alpha_story_frame);
	
			alpha_story_frame = clamp(alpha_story_frame + 0.005,0,1);
	
			if alpha_story_frame = 1 {
				if locale_art != false {
					if narrator = "scene_transition" {
						alpha_story_locale = clamp(alpha_story_locale - 0.003,0,1);
					} else {
						alpha_story_locale = clamp(alpha_story_locale + 0.01,0,1);
					}
				}
				if character_art != false {
					if narrator = "scene_transition" {
						alpha_story_portrait = clamp(alpha_story_portrait - 0.003,0,1);
					} else {
						alpha_story_portrait = clamp(alpha_story_portrait + 0.01,0,1);
					}
				}
			}
	
			if locale_art != false {
				draw_sprite_general(locale_art,0,60,67,330,443,x-165*0.72,y-218*0.72-160,0.72,0.72,0,c_white,c_white,c_white,c_white,alpha_story_locale);
				draw_sprite_ext(s_story_locale_frame,0,x,y-160,0.7,0.7,0,c_white,alpha_story_locale);
			}
	
			if character_art != false {
				draw_sprite_ext(character_art,0,x-190,y+185,0.105,0.105,0,c_white,alpha_story_portrait);
				draw_sprite_ext(s_story_portrait_frame,0,x-190,y+185,0.16,0.16,0,c_white,alpha_story_portrait);
				draw_sprite_ext(s_banner,0,x-190,y+270,0.118,0.118,0,c_white,alpha_story_portrait);
				draw_set_alpha(alpha_story_portrait);
				draw_set_font(Empower_font_story_portrait);
				draw_set_colour(c_maroon);
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				draw_text(x-190,y+258,character_name);
			}
		}
	}

	if alpha_story_portrait = 1 or (narrator = true && alpha_story_frame = 1) && narrator != "end_story_transition" {
	
		chars_revealed += reveal_speed;
		chars_revealed = min(chars_revealed, string_length(text)); 
		var _text_current = string_copy(text, 1, chars_revealed);
	
		draw_set_alpha(1);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_colour(c_maroon);
	
		if narrator = true {
			draw_set_font(Empower_font_story);
			draw_text(x-270, y+80, _text_current);
		} else {
			draw_set_font(Empower_font_story_character);
			draw_text(x-85, y+80, _text_current);
		}
	}

	if chars_revealed = string_length(text) && narrator != "scene_transition" && narrator != "combat_transition" && narrator != "end_story_transition" {
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
	
		draw_sprite_ext(s_move_traingle,0,x+320,y+185,0.3,0.3,270,c_white,alpha_next_text);
	}

	if narrator = "scene_transition" && alpha_story_locale = 0 {
		_text = 0;
		scene_playing = false;
	}

	if narrator = "combat_transition" && duel_button = noone {
		duel_button = instance_create_depth(x+85,y+183,depth-2,obj_encounter_button);
		duel_button.rarity = rarity;
		duel_button.encounter_name = encounter_name;
	
		// save story done
		var file_id = file_text_open_read("progress.json");
		var json_string = "";
		while (!file_text_eof(file_id)) {
			json_string += file_text_read_string(file_id);
			file_text_readln(file_id); // Read newline characters as well
		}
		file_text_close(file_id);
		var progress_data = json_parse(json_string);
		progress_data[$ encounter_name][$ "precombat_story_done"] = true;
	
		var modified_json_string = json_stringify(progress_data, true);
		file_id = file_text_open_write("progress.json");
		file_text_write_string(file_id, modified_json_string);
		file_text_close(file_id);
	}
	
	if narrator = "end_story_transition" {
		var c_x = camera_get_view_x(view_camera[1]);
		var c_y = camera_get_view_y(view_camera[1]);
		if unlock_sys = noone {
			unlock_sys = part_system_create(Ps_unlock_common);
			part_system_position(unlock_sys, c_x + 0.5*view_wport[1], c_y + 0.55*view_hport[1]);
			part_system_depth(unlock_sys,depth-1);
		}
		if unlock_seq = noone && unlock_seq_done = false {
			unlock_seq = layer_sequence_create("cards_on_journal",c_x + 0.5*view_wport[1],c_y + 0.55*view_hport[1],seq_unlock_common);
			alarm[1] = 80;
		}
		if unlock_card = noone {
			object_set_sprite(obj_card_journal_card,global.rarity_list[card_unlocks_rarity[card_unlocks_iter]][card_unlocks_element[card_unlocks_iter]][card_unlocks_card_type[card_unlocks_iter]][0][card_unlocks_card_index[card_unlocks_iter]]);
			unlock_card = instance_create_depth(c_x + 0.5*view_wport[1], c_y + 0.55*view_hport[1],depth-2,obj_card_journal_card);
			var resize_scale = view_wport[1]/1280;
			image_xscale = 0.65*resize_scale;
			image_yscale = 0.65*resize_scale;
		}
		
		draw_set_font(Empower_font);
		draw_set_colour(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(c_x + 0.5*view_wport[1],c_y + 0.15*view_hport[1],"New Memory Unlocked!");
	}
}