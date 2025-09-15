/// @description Regular effect
if consume_seq_1 != noone {
	layer_sequence_destroy(consume_seq_1);
	consume_seq_1 = noone;
}

if consume_seq_2 != noone {
	layer_sequence_destroy(consume_seq_2);
	consume_seq_2 = noone;
}

if seq_change_channel_1 != noone {
	layer_sequence_destroy(seq_change_channel_1);
	seq_change_channel_1 = noone;
}

if seq_change_channel_2 != noone {
	layer_sequence_destroy(seq_change_channel_2);
	seq_change_channel_2 = noone;
}

if consume_clouds_1 != noone {
	part_emitter_destroy_all(consume_clouds_1);
	consume_clouds_1 = noone;
}

if consume_clouds_2 != noone {
	part_emitter_destroy_all(consume_clouds_2);
	consume_clouds_2 = noone;
}

if global.player_locale_1 != noone {
	global.player_locale_1.health_locale = 0;
}
if global.player_locale_2 != noone {
	global.player_locale_2.health_locale = 0;
}
if global.player_locale_3 != noone {
	global.player_locale_3.health_locale = 0;
}
if global.player_locale_4 != noone {
	global.player_locale_4.health_locale = 0;
}

if global.opp_locale_1 != noone {
	global.opp_locale_1.health_locale = 0;
}
if global.opp_locale_2 != noone {
	global.opp_locale_2.health_locale = 0;
}
if global.opp_locale_3 != noone {
	global.opp_locale_3.health_locale = 0;
}
if global.opp_locale_4 != noone {
	global.opp_locale_4.health_locale = 0;
}

alarm[0] = 40;