/// @description Insert description here
// You can write your code in this editor
if (moused = true) && (global.targeting = false) && obj_mouse_manager.grabbed_card != self && global.big_mode = false && playing = false {
	x = 1513;
	y = 723;
	image_xscale = 2
	image_yscale = 2
	depth = -1300
	big_mode = true
	global.big_mode = true;
	if global.player_enabled = true {
		enable_player_after_big_mode = true;
		global.player_enabled = false;
	}
} 