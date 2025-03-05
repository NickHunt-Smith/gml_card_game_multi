/// @description Insert description here
// You can write your code in this editor

if skip_target_2 = false {
	sacrifice_2 = layer_sequence_create("effect_layer",target_2.x+112,target_2.y+184,seq_sacrifice);
} else {
	seq_no_target = layer_sequence_create("effect_layer",x,y,seq_no_targets);
}

alarm[3] = 104;