/// @description Insert description here
// You can write your code in this editor

if big_mode = true {
	global.big_mode = false;
	if global.drafting = false {
		global.player_enabled = true;
	}
}

if instance_exists(tooltip_inst) {
	instance_destroy(tooltip_inst)
}

if play_seq != noone {
	layer_sequence_destroy(play_seq);
	play_seq = noone;
}