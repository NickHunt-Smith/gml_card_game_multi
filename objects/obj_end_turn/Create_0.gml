/// @description Insert description here
// You can write your code in this editor

end_turn_shimmer = noone;
no_target_shimmer = noone;
shimmering = false;
global.wait_for_effect = true;
global.end_turn_active = false;
combat_started = false;
combat_ended = false;
locked_channel_boost = 2;
locked_boosting = false;

combat_seq_player = noone;
combat_seq_opp = noone;
combat_player_yscale = 1;
combat_opp_yscale = 1;
player_scale = 1;
opp_scale = 1;

channel_up_seq = noone;
shield_seq_1 = noone;
shield_seq_2 = noone;
seq_change_health_1 = noone;
seq_change_health_2 = noone;
channel_seq_1 = noone;
channel_seq_2 = noone;

player_1_done = false;
player_2_done = false;
player_3_done = false;
player_4_done = false;
opp_1_done = false;
opp_2_done = false;
opp_3_done = false;
opp_4_done = false;

position = "end_turn";
opp = "end_turn";

image_xscale = 0.45;
image_yscale = 0.45;

depth = -600;

x = x-10;
y = y + 20;
alpha_fluc = 1;
reverse = false;
is_empty = false;