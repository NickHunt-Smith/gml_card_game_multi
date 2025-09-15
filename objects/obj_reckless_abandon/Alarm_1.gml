/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	reduce = layer_sequence_create("effect_layer",target_1.x+112,target_1.y + 184,seq_health_reduce);
	increase = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_channel_up);
	var seq_change_health = scr_change_numbers(bonus_channel,target_1.x+26,target_1.y + 328);
	if target_1.frozen = true {
		target_1.memory_channel += bonus_channel;
	} else {
		target_1.channel += bonus_channel;
	}
	alarm[2] = 90;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}