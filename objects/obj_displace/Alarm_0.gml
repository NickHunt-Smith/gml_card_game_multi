/// @description Insert description here
// You can write your code in this editor

if switch_seq != noone {
	linger_1.switched = true;
	linger_2.switched = true;
	layer_sequence_destroy(switch_seq);
	switch_seq = noone;
}

if ball_seq_1 != noone {
	part_system_destroy(ball_seq_1);
	ball_seq_1 = noone;
}

if ball_seq_2 != noone {
	part_system_destroy(ball_seq_2);
	ball_seq_2 = noone;
}

if seq_no_target != noone {
	layer_sequence_destroy(seq_no_target);
	seq_no_target = noone;
}

wait = false;
eff_done = true;