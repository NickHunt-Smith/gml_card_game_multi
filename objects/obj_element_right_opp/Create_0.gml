/// @description Insert description here
// You can write your code in this editor

global.channelled_right_opp = [0,0,0];

max_channel = 0;
global.channelled_right_opp_ruby = 0;
global.channelled_right_opp_pearl = 0;
global.channelled_right_opp_onyx = 0;
element_sprites = [s_ruby,s_pearl,s_onyx];
gauge_element_sprites = [s_channel_gauge_ruby,s_channel_gauge_pearl,s_channel_gauge_onyx];

channelled_sys = noone;
depth = -800;
power_swirling = noone;

tooltip_created = false;
tooltip_inst = noone;
moused = false;