
card_state.rarity = 2;
card_state.card_index = 0;
		
var effect_inst_opp = instance_create_depth(card_state.x,card_state.y,-800,obj_wild_ocean);
effect_inst_opp.eff_type = "play";
effect_inst_opp.card_state = card_state;
card_state.effect_function_inst = effect_inst_opp;
card_state.effect_function = obj_wild_ocean;
effect_inst_opp.opp = opp;
if target_1 = "self" {
	effect_inst_opp.target_1 = card_state;
} else {
	effect_inst_opp.target_1 = target_1;
}
if target_2 = "self" {
	effect_inst_opp.target_2 = card_state;
} else {
	effect_inst_opp.target_2 = target_2;
}
if target_3 = "self" {
	effect_inst_opp.target_3 = card_state;
} else {
	effect_inst_opp.target_3 = target_3;
}
			
var lingering_effect_inst_opp = instance_create_depth(card_state.x,card_state.y,-800,obj_wild_ocean);
lingering_effect_inst_opp.eff_type = "lingering";
lingering_effect_inst_opp.card_state = card_state;
card_state.lingering_effect_function_inst = lingering_effect_inst_opp;
lingering_effect_inst_opp.opp = opp;

alarm[1] = 40;