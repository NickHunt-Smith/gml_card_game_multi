
if instance_exists(encounter_frame) = false {
	encounter_frame = noone;
}

// Check If I am current encounter. If I am and enemy was defeated, start postcombat story. If postcombat story done, unlock next encounters
if checked_if_active = false {
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	if progress_data[$ encounter_name][$ "precombat_story_done"] = true && progress_data[$ encounter_name][$ "defeated"] = true && progress_data[$ encounter_name][$ "postcombat_story_done"] = false {
		story_frame = instance_create_layer(x,y,"story",obj_story_text);
		global.story_active = true;
		story_frame.encounter_story = global.story_json[$ encounter_name];
		story_frame.rarity = rarity;
		story_frame.art = art;
		story_frame.win_threshold = win_threshold;
		story_frame.encounter_name = encounter_name;
		story_frame.text_stage = "postcombat";
		story_frame.card_unlocks_element = card_unlocks_element;
		story_frame.card_unlocks_rarity = card_unlocks_rarity;
		story_frame.card_unlocks_card_type = card_unlocks_card_type;
		story_frame.card_unlocks_card_index = card_unlocks_card_index;
		camera_set_view_pos(view_camera[1],x-0.5*view_wport[1],y-0.5*view_hport[1]);
		
		if hover_effect != noone {
			part_system_destroy(hover_effect);
			hover_effect = noone;
		}
	}
	
	checked_if_active = true;	
}

if checked_if_active_unlocks = false && instance_exists(story_frame) = false {
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	if progress_data[$ encounter_name][$ "precombat_story_done"] = true && progress_data[$ encounter_name][$ "defeated"] = true && progress_data[$ encounter_name][$ "postcombat_story_done"] = true && progress_data[$ encounter_name][$ "next_encounters_unlocked"] = false {
		unsepia_seq = layer_sequence_create("story",x,y,seq_unsepia);
		alarm[0] = 85;
	} else {
		highlight_next_encounters = true;
	}
	
	checked_if_active_unlocks = true;	
}

if checked_if_active_unlocks = true && highlight_next_encounters = true {
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	
	if progress_data[$ encounter_name][$ "next_encounters_unlocked"] = false {
		if array_length(next_encounters) > next_encounter_iter {
			for (var i = 0; i < instance_number(obj_bronze_encounter); ++i) {
			    var _inst = instance_find(obj_bronze_encounter, i);
				if _inst.encounter_name = next_encounters[next_encounter_iter] {
					_inst.unlocked = true;
					progress_data[$ _inst.encounter_name][$ "unlocked"] = true;
					var modified_json_string = json_stringify(progress_data, true);
					file_id = file_text_open_write("progress.json");
					file_text_write_string(file_id, modified_json_string);
					file_text_close(file_id);
					global.zoom_inst.origin_x = _inst.x;
					global.zoom_inst.origin_y = _inst.y;
					global.reposition = true;
					next_encounter_iter+= 1;
					alarm[1] = 150;
				}
			}
			for (var i = 0; i < instance_number(obj_encounter_icon); ++i) {
			    var _inst = instance_find(obj_encounter_icon, i);
				if _inst.encounter_name = next_encounters[next_encounter_iter] {
					_inst.unlocked = true;
					progress_data[$ _inst.encounter_name][$ "unlocked"] = true;
					var modified_json_string = json_stringify(progress_data, true);
					file_id = file_text_open_write("progress.json");
					file_text_write_string(file_id, modified_json_string);
					file_text_close(file_id);
					global.zoom_inst.origin_x = _inst.x;
					global.zoom_inst.origin_y = _inst.y;
					global.reposition = true;
					next_encounter_iter+= 1;
					alarm[1] = 150;
				}
			}
		} else {
			progress_data[$ encounter_name][$ "next_encounters_unlocked"] = true;
	
			var modified_json_string = json_stringify(progress_data, true);
			file_id = file_text_open_write("progress.json");
			file_text_write_string(file_id, modified_json_string);
			file_text_close(file_id);
			global.story_active = false;
		}
	} else {
		sprite_index = s_brindlevale;
	}
	
	highlight_next_encounters = false;
}
