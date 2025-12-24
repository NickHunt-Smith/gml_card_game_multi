var resize_scale = view_wport[1]/1280;
if mouse_x > x-52*resize_scale && mouse_x < x+52*resize_scale && mouse_y > y-27*resize_scale && mouse_y < y+27*resize_scale {
	
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	
	if progress_data[$ encounter_name][$ "defeated"] = true && progress_data[$ encounter_name][$ "postcombat_story_done"] = false {
		 story_text.narrator = "end_story_transition";
	} else {
		if waiting_for_load = false {
			if sprite_index = s_settings_button {
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
		
			audio_play_sound(snd_big_click,10,false);
			global.story_active = true;
			waiting_for_load = true;
			depth = depth - 1000;
			portal_seq_1 = layer_sequence_create("cards_on_journal",x_surface + portal_x, y_surface + portal_y,seq_portal);
			alarm[0] = 100;
		}
	}
}