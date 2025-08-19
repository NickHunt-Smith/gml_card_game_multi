/// @description Insert description here
// You can write your code in this editor

if glow_on_target != noone {
	part_emitter_destroy_all(glow_on_target);
}

target_1.element = 4;
target_1.rarity = 0;
target_1.card_index = 1;
target_1.channel = 1;
target_1.health_locale = 1;
target_1.initial_element = 4;
target_1.initial_rarity = 0;
		
var effect_inst_opp = instance_create_depth(target_1.x,target_1.y,-800,obj_expanding_forest);
effect_inst_opp.ignore_buffer = true;
effect_inst_opp.eff_type = "play";
effect_inst_opp.card_state = target_1;
target_1.effect_function = obj_expanding_forest;
target_1.effect_function_inst = effect_inst_opp;
effect_inst_opp.opp = opp;

effect_inst_opp.target_1 = noone;
effect_inst_opp.target_2 = noone;
effect_inst_opp.target_3 = noone;
			
var lingering_effect_inst_opp = instance_create_depth(target_1.x,target_1.y,-800,obj_expanding_forest);
lingering_effect_inst_opp.eff_type = "lingering";
lingering_effect_inst_opp.card_state = target_1;
target_1.lingering_effect_function_inst = lingering_effect_inst_opp;
lingering_effect_inst_opp.opp = target_1.opp;

alarm[0] = 30;