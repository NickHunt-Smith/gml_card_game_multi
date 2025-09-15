/// @description Insert description here
// You can write your code in this editor

layer_sequence_destroy(channel_seq);
layer_sequence_destroy(seq_change_health);

if opp = true {
	consume_clouds_1 = part_system_create(Ps_consume_element);
	part_system_position(consume_clouds_1, 1254, 100);
	part_system_depth(consume_clouds_1,-1100);
				
	consume_clouds_2 = part_system_create(Ps_consume_element);
	part_system_position(consume_clouds_2, 1784, 100);
	part_system_depth(consume_clouds_2,-1100);
} else {
	consume_clouds_1 = part_system_create(Ps_consume_element);
	part_system_position(consume_clouds_1, 1254, 1400);
	part_system_depth(consume_clouds_1,-1100);
				
	consume_clouds_2 = part_system_create(Ps_consume_element);
	part_system_position(consume_clouds_2, 1784, 1400);
	part_system_depth(consume_clouds_2,-1100);
}
alarm[1] = 40; 