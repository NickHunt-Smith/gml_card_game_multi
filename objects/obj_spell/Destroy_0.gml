/// @description When destroyed, no longer highlight card
// You can write your code in this editor

if (draft_mode = false) {
	part_system_destroy(global._pfx_border_top);
	part_system_destroy(global._pfx_border_right);
	part_system_destroy(global._pfx_border_bottom);
	part_system_destroy(global._pfx_border_left);
	
	scr_play_spell(false,rarity,element,card_index,noone,noone,noone);
}

if created_eff != noone {
	instance_destroy(created_eff)
}