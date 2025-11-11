if global.story_active = false {
	if story_done = false {
		var c_x = camera_get_view_x(view_camera[1]);
		var c_y = camera_get_view_y(view_camera[1]);
		story_frame = instance_create_layer(c_x+0.5*view_wport[1],c_y+0.5*view_hport[1],"story",obj_story_text);
		global.story_active = true;
		story_frame.encounter_story = global.story_json[$ name];
		story_frame.enemy = enemy;
	}
	
	if encounter_frame = noone && global.encounter_visible = false {
		encounter_frame = instance_create_depth(x,y-210,depth-1,obj_encounter_frame);
		encounter_frame.enemy = enemy;
		encounter_frame.rarity = rarity;
		encounter_frame.art = art;
		encounter_frame.name = name;
		global.encounter_visible = true;
	
		if hover_effect != noone {
			part_system_destroy(hover_effect);
			hover_effect = noone;
		}
	}
}