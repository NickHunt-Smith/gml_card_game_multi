/// @description Insert description here
// You can write your code in this editor

if opp = false {
	global.player_playing_locale = false;
} else {
	global.opp_playing_locale = false;
}

if play_seq != noone {
	layer_sequence_destroy(play_seq);
	play_seq = noone;
}