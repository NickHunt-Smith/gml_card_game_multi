/// @description Insert description here
// You can write your code in this editor

if crumble != noone {
	layer_sequence_destroy(crumble);
	crumble = noone;
}

crumble = layer_sequence_create("effect_layer",target_1.x,target_1.y,seq_big_crack);
screenshake(30, 3, 0.8);
alarm[1] = 50;