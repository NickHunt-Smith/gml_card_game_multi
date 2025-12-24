/// @description Insert description here
// You can write your code in this editor

inbuf = buffer_create(16,buffer_grow,1)
waiting_to_start = true;

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