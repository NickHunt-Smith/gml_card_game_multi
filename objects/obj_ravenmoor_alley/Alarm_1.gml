/// @description Insert description here
// You can write your code in this editor

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

if shield_seq != noone {
	layer_sequence_destroy(shield_seq);
	shield_seq = noone;
}

if seq_change_health != noone {
	layer_sequence_destroy(seq_change_health);
	seq_change_health = noone;
}

target_1 = noone;

global.lingering_active = false;
if enable_player = true {
	global.player_enabled = true;
}