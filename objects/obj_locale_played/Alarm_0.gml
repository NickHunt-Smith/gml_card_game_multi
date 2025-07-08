/// @description Insert description here
// You can write your code in this editor

if destroy_sys != noone {
	layer_sequence_destroy(destroy_sys);
}

if overwrite_seq != noone {
	layer_sequence_destroy(overwrite_seq);
	overwrite_seq = noone;
}

instance_destroy();