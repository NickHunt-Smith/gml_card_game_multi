/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	seq_change_health_1 = scr_change_numbers(-target_1.health_locale + 1,target_1.x+global.health_offset_x,target_1.y + 328);
	target_1.health_locale = 1;
}

alarm[3] = 40;