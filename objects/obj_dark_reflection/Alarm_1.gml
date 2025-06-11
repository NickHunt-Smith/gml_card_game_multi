/// @description Insert description here
// You can write your code in this editor

if copy != noone {
	layer_sequence_destroy(copy);
	copy = noone;
}

if global.pvp_active = true && opp = true {
	global.ignore_next_opp_locale += 1;
}
var effect_arr = scr_play_locale(opp,target_2.position,target_1.rarity,target_1.element,target_1.card_index,noone,noone,noone);

alarm[0] = 30;