/// @description Insert description here
// You can write your code in this editor

if bolts != noone {
	layer_sequence_destroy(bolts);
	bolts = noone;
}

rarity_scry = target_1.rarity;
if rarity_scry != 4 {
	rarity_scry += 1;
}
target_1.health_locale = 0;

alarm[0] = 60;