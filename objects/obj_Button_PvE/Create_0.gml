/// @description Insert description here
// You can write your code in this editor

surface = -1;
radius_1 = 0;
board_scale = 2.9;
background_angle = 0;
max_radius = 3000;
x_surface = 0;
y_surface = 0;
portal_x = 0.5*view_wport[0];
portal_y = 0.5*view_hport[0];
waiting_for_load = false;
portal_seq_1 = noone;
player_portrait = noone;
enemy_portrait = noone;
image_alpha = 0;
alpha_increasing = false;
trigger_alpha = false;
selected = false;
disabled = false;
textColor = c_white;

selectAction = function() {
	if waiting_for_load = false {
		global.disable_buttons = true;
		waiting_for_load = true;
		depth = layer_get_depth("settings");
		portal_seq_1 = layer_sequence_create("settings",x_surface + portal_x, y_surface + portal_y,seq_portal);
		global.music_controller.music_curr = noone;
		audio_play_sound(snd_small_click,10,false);
		alarm[0] = 100;
	}
}