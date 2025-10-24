if global.story_active = false {
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