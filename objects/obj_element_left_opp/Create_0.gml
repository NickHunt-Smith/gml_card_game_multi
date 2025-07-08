/// @description Insert description here
// You can write your code in this editor

global.channelled_left_opp = [0,0,0,0,0,0,0,0];

global.channelled_left_opp_ruby = 0;
global.channelled_left_opp_pearl = 0;
global.channelled_left_opp_onyx = 0;
global.channelled_left_opp_sapphire = 0;
global.channelled_left_opp_emerald = 0;
global.channelled_left_opp_citrine = 0;
global.channelled_left_opp_opal = 0;
global.channelled_left_opp_amethyst = 0;
element_sprites = [s_ruby,s_pearl,s_onyx,s_sapphire,s_emerald,s_citrine,s_opal,s_amethyst];
//gauge_element_sprites = [s_channel_gauge_ruby,s_channel_gauge_pearl,s_channel_gauge_onyx];
max_channel = 0;
max_channel_ind_current = 1000;
max_channel_ind_draw = 1000;
max_element_seq = noone;

channelled_sys = noone;
depth = -800;

tooltip_created = false;
tooltip_inst = noone;
moused = false;

fade_out = false
power_swirling = noone;
win_sys_1 = noone;
win_sys_2 = noone;
alpha = 0;

