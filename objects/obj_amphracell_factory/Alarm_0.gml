/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change_health != noone {
	layer_sequence_destroy(seq_change_health);
}

if opp = false {

	created = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_scry_portal);
	var copy_struct = layer_sequence_get_instance(created);
	copy_struct.sequence.tracks[1].keyframes[0].channels[0].spriteIndex = global.rarity_list[rarity_scry][element_scry][card_type_scry][0][card_index_scry];
	alarm[1] = 140;
} else {
	array_push(global.opponent.hand_rarity,rarity_scry);
	array_push(global.opponent.hand_card_type,card_type_scry);
	
	eff_done = true;
	wait = false;
}