/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false and skip_target_2 = false {
	copy = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_copy);
	var copy_struct = layer_sequence_get_instance(copy);
	copy_struct.sequence.tracks[0].keyframes[0].channels[0].spriteIndex = target_1.sprite_index;
	alarm[1] = 120;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 50;
}