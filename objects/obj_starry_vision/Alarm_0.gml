/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if global.drafting = false {

	wait = false;
	eff_done = true;

	if opp = false && skip_target_1 = false {
		var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.switch_priority = false;
		draft_inst.rarity_locked = true;
		draft_inst.rarity_locked_i = rarity_scry;
		draft_inst.element_locked = true;
		draft_inst.element_locked_i = element_scry;
		draft_inst.card_type_locked = true;
		draft_inst.card_type_locked_i = card_type_scry;
		global.player_enabled = false;
	}
} else {
	alarm[0] = 50;
}