/// @description Insert description here
// You can write your code in this editor

if channel_seq != noone {
	layer_sequence_destroy(channel_seq);
}

if seq_change != noone {
	layer_sequence_destroy(seq_change);
}

fire_on_card = part_system_create(Ps_Fire);
part_system_position(fire_on_card, x, y);
part_system_depth(fire_on_card,-1100);

alarm[1] = 10;