/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	sacrifice_1 = layer_sequence_create("effect_layer",target_1.x+112,target_1.y+184,seq_sacrifice);
} else {
	seq_no_target = layer_sequence_create("effect_layer",x,y,seq_no_targets);
}

alarm[1] = 30;