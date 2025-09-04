/// @description Play discard

if discard_play_seq != noone {
	layer_sequence_destroy(discard_play_seq);
	discard_play_seq = noone;
}

if player_reenable = true {
	global.player_enabled = true;
}



instance_destroy();