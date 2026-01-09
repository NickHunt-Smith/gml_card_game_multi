/// @description Insert description here
// You can write your code in this editor

if summon_whirlpool_1 != noone {
	part_system_destroy(summon_whirlpool_1);
	summon_whirlpool_1 = noone;
}
if summon_whirlpool_2 != noone {
	part_system_destroy(summon_whirlpool_2);
	summon_whirlpool_2 = noone;
}
if summon_whirlpool_3 != noone {
	part_system_destroy(summon_whirlpool_3);
	summon_whirlpool_3 = noone;
}
if sparkle_rain != noone {
	part_system_destroy(sparkle_rain);
	sparkle_rain = noone;
}
if shooting_stars != noone && global.cheap_mode = false {
	part_system_destroy(shooting_stars);
	shooting_stars = noone;
}
if scry_sequence != noone {
	layer_sequence_destroy(scry_sequence);
	scry_sequence = noone;
}
if action_phase_seq != noone {
	layer_sequence_destroy(action_phase_seq);
	action_phase_seq = noone;
}
instance_destroy();