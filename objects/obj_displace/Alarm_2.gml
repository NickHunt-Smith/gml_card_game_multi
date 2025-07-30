/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false && skip_target_2 = false {
	
	ball_seq_1 = part_system_create(Ps_switch_ball);
	part_system_position(ball_seq_1, target_1.x + 112,target_1.y + 184);
	part_system_depth(ball_seq_1,layer_get_depth("effect_layer"));
	
	ball_seq_2 = part_system_create(Ps_switch_ball);
	part_system_position(ball_seq_2, target_2.x + 112,target_2.y + 184);
	part_system_depth(ball_seq_2,layer_get_depth("effect_layer"));
	
	switch_seq = layer_sequence_create("effect_layer",target_2.x + 112,target_2.y + 184,seq_switch_spell);
	scr_sequence_target(switch_seq,target_1,opp,target_2); 
	
	alarm[3] = 100;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}