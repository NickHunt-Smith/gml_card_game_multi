/// @description Insert description here
// You can write your code in this editor

if spark != noone {
	layer_sequence_destroy(spark);
	spark = noone;
}

channel_up_seq = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_channel_up);
var seq_change_health = scr_change_numbers(bonus_channel,card_state.x+26,card_state.y + 328);
if target_1.frozen = true {
	target_1.memory_channel += bonus_channel;
} else {
	target_1.channel += bonus_channel;
}

alarm[0] = 100;