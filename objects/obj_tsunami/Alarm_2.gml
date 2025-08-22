/// @description Insert description here
// You can write your code in this editor


if (target_1.element = 3 && target_1.rarity = 0 && target_1.card_index = 1) or (target_1.element = 3 && target_1.rarity = 2 && target_1.card_index = 0) or (target_1.element = 3 && target_1.rarity = 4 && target_1.card_index = 0) {
	fortify_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+230,seq_fortify);
	if target_1.frozen = true {
		target_1.memory_channel += flood_channel_boost;
	} else {
		target_1.channel += flood_channel_boost;
	}
	target_1.health_locale += flood_strength_boost;
	alarm[1] = 60;
} else {
	
	var transform_effect_inst_opp = instance_create_depth(target_1.x,target_1.y,-800,global.rarity_list[target_1.rarity][target_1.element][0][4][target_1.card_index]);
	transform_effect_inst_opp.eff_type = "transform";
	transform_effect_inst_opp.card_state = target_1;
	target_1.transform_effect_function_inst = transform_effect_inst_opp;
	transform_effect_inst_opp.opp = target_1.opp;
	
	instance_destroy(target_1.lingering_effect_function_inst);

	target_1.element = 3;
	target_1.rarity = 0;
	target_1.card_index = 1;
	target_1.channel = 1;
	target_1.health_locale = 1;
	target_1.initial_element = 3;
	target_1.initial_rarity = 0;
		
	var effect_inst_opp = instance_create_depth(target_1.x,target_1.y,-800,obj_calm_ocean);
	effect_inst_opp.ignore_buffer = true;
	effect_inst_opp.eff_type = "play";
	effect_inst_opp.card_state = target_1;
	target_1.effect_function = obj_calm_ocean;
	target_1.effect_function_inst = effect_inst_opp;
	effect_inst_opp.opp = target_1.opp;

	effect_inst_opp.target_1 = noone;
	effect_inst_opp.target_2 = noone;
	effect_inst_opp.target_3 = noone;
			
	var lingering_effect_inst_opp = instance_create_depth(target_1.x,target_1.y,-800,obj_calm_ocean);
	lingering_effect_inst_opp.eff_type = "lingering";
	lingering_effect_inst_opp.card_state = target_1;
	target_1.lingering_effect_function_inst = lingering_effect_inst_opp;
	lingering_effect_inst_opp.opp = target_1.opp;
	alarm[1] = 40;
}

	


