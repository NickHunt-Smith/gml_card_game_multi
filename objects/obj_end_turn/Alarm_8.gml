/// @description Insert description here
// You can write your code in this editor

if channel_seq_1 != noone {
	layer_sequence_destroy(channel_seq_1);
	layer_sequence_destroy(seq_change_health_1);
	channel_seq_1 = noone;
	seq_change_health_1 = noone;
}

if channel_seq_2 != noone {
	layer_sequence_destroy(channel_seq_2);
	layer_sequence_destroy(seq_change_health_2);
	channel_seq_2 = noone;
	seq_change_health_2 = noone;
}

player_1_done = false;
player_2_done = false;
player_3_done = false;
player_4_done = false;
opp_1_done = false;
opp_2_done = false;
opp_3_done = false;
opp_4_done = false;

if global.end_game_trigger = false {

	global.turn_count += 1;
	var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
	draft_inst.draft_count = 3;
	draft_inst.extra_opp_card = true;
	global.wait_for_effect = true;
	global.end_turn_active = false;
	global.drafting = true;
	combat_started = false;
	combat_ended = false;
	locked_boosting = false;

}