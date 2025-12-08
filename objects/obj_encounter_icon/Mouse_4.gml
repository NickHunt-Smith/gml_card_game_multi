if global.story_active = false && global.journal_active = false {
	global.zoom_inst.button_1 = true;
	global.zoom_inst.button_2 = false;
	global.zoom_inst.button_3 = false;
	global.zoom_inst.button_4 = false;
	global.zoom_inst.button_5 = false;
	global.zoom_inst.origin_x = x;
	global.zoom_inst.origin_y = y;
	global.reposition = true;
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	
	var story_done = false;
	if progress_data[$ encounter_name][$ "precombat_story_done"] = true {
		story_done = true;
	}
	
	if story_done = false {
		story_frame = instance_create_layer(x,y,"story",obj_story_text);
		global.story_active = true;
		story_frame.encounter_story = global.story_json[$ encounter_name];
		story_frame.rarity = rarity;
		story_frame.art = art;
		story_frame.win_threshold = win_threshold;
		story_frame.encounter_name = encounter_name;
		story_frame.text_stage = "precombat";
		
		if hover_effect != noone {
			part_system_destroy(hover_effect);
			
			hover_effect = noone;
		}
	}

	if story_done = true && encounter_frame = noone && global.encounter_visible = false {
		encounter_frame = instance_create_depth(x,y-180,depth-1,obj_encounter_frame);
		encounter_frame.rarity = rarity;
		encounter_frame.art = art;
		encounter_frame.win_threshold = win_threshold;
		encounter_frame.encounter_name = encounter_name;
		encounter_frame.encounter_title = encounter_title;
		global.encounter_visible = true;
	
		if hover_effect != noone {
			part_system_destroy(hover_effect);
			hover_effect = noone;
		}
	}
}