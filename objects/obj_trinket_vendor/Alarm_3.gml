/// @description Insert description here
// You can write your code in this editor

if drain_seq != noone {
	layer_sequence_destroy(drain_seq);
	drain_seq = noone;
}

if target_1.shielded = true {
	shield_seq = layer_sequence_create("effect_layer",target_1.x + 111,target_1.y + 184,seq_shield_break);
	target_1.shielded = false;
	alarm[0] = 65;
} else {
	if opp = false {
		global.player.drained += drain_amount;
	} else {
		global.opponent.drained += drain_amount;
	}
	
	var seq_restore_change_1 = scr_change_numbers(-drain_amount,target_1.x+global.health_offset_x,target_1.y+328);
	target_1.health_locale -= drain_amount;

	fortify_seq = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+230,seq_fortify)
	var seq_restore_change_2 = scr_change_numbers(drain_amount,card_state.x+global.health_offset_x,card_state.y+328);
	card_state.health_locale += drain_amount;
	alarm[0] = 100;
}

