/// @description Insert description here
// You can write your code in this editor

if win_sys_1 != noone {
	layer_sequence_destroy(win_sys_1);
	win_sys_1 = noone;
}
if win_sys_2 != noone {
	layer_sequence_destroy(win_sys_2);
	win_sys_2 = noone;
}

fade_out = true;

alarm[4] = 200;