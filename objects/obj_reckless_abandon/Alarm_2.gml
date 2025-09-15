/// @description Insert description here
// You can write your code in this editor

if reduce != noone {
	layer_sequence_destroy(reduce);
	reduce = noone;
}

seq_change_health_1 = scr_change_numbers(-target_1.health_locale + 1,target_1.x+111,target_1.y + 328);
target_1.health_locale = 1;

alarm[0] = 60;