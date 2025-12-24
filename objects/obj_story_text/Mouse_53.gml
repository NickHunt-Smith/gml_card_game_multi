
if text_rolling = true && narrator != "scene_transition" && alpha_story_frame = 1 && narrator != "combat_transition" && narrator != "end_story_transition"{ 
	if chars_revealed != string_length(text) {
		chars_revealed = string_length(text); 
	} else {
		text_rolling = false;
		audio_play_sound(snd_quick_click,10,false);
	}
}

if narrator = "end_story_transition" && global.big_mode = false {
	global.music_controller.music_curr = noone;
	if skip_button != noone {
		instance_destroy(skip_button);
		skip_button = noone;
	}
	if unlock_sys != noone {
		part_system_destroy(unlock_sys);
		unlock_sys = noone;
	}
	if unlock_seq != noone {
		layer_sequence_destroy(unlock_seq);
		unlock_seq = noone;
	}
	instance_destroy(unlock_card);
	unlock_card = noone;
	unlock_seq_done = false;
	
	// Save added card if we don't already have it
	if array_contains(global.cards_avail_json[$ "element" + string(card_unlocks_element[card_unlocks_iter])][$ "rarity" + string(card_unlocks_rarity[card_unlocks_iter])][$ "card_type" + string(card_unlocks_card_type[card_unlocks_iter])],card_unlocks_card_index[card_unlocks_iter]) = false {
		var file_id = file_text_open_read("cards_avail.json");
		var json_string = "";
		while (!file_text_eof(file_id)) {
			json_string += file_text_read_string(file_id);
			file_text_readln(file_id); // Read newline characters as well
		}
		file_text_close(file_id);
		var cards_avail = json_parse(json_string);
		array_push(cards_avail[$ "element" + string(card_unlocks_element[card_unlocks_iter])][$ "rarity" + string(card_unlocks_rarity[card_unlocks_iter])][$ "card_type" + string(card_unlocks_card_type[card_unlocks_iter])],card_unlocks_card_index[card_unlocks_iter]);
		global.cards_avail_json = cards_avail;
		
		var modified_json_string = json_stringify(cards_avail, true);
		file_id = file_text_open_write("cards_avail.json");
		file_text_write_string(file_id, modified_json_string);
		file_text_close(file_id);
	}
	
	card_unlocks_iter += 1;
	if card_unlocks_iter >= array_length(card_unlocks_element) {
		// save postcombat story done
		var file_id = file_text_open_read("progress.json");
		var json_string = "";
		while (!file_text_eof(file_id)) {
			json_string += file_text_read_string(file_id);
			file_text_readln(file_id); // Read newline characters as well
		}
		file_text_close(file_id);
		var progress_data = json_parse(json_string);
		progress_data[$ encounter_name][$ "postcombat_story_done"] = true;
	
		var modified_json_string = json_stringify(progress_data, true);
		file_id = file_text_open_write("progress.json");
		file_text_write_string(file_id, modified_json_string);
		file_text_close(file_id);
		
		instance_destroy();
		global.story_active = false;
		global.music_controller.music_curr = snd_map_music;
	}
}