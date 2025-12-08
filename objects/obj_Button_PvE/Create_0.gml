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

// Inherit the parent event
event_inherited();

selectAction = function() {
	if waiting_for_load = false {
		global.disable_buttons = true;
		waiting_for_load = true;
		depth = depth - 1;
		portal_seq_1 = layer_sequence_create("above_buttons",x_surface + portal_x, y_surface + portal_y,seq_portal);
		alarm[0] = 100;
	}
}