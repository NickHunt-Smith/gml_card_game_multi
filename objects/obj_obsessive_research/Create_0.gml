/// @description Insert description here
// You can write your code in this editor

rarity_scry = 0;
element_scry = 6;
card_type_scry = 0;
hand_rarity = [];
card_type_rarity = [];

eff_instructions_1 = "Discard to Scry 1 higher";
draw_instructions_1 = false;

eff_type = "none";

card_state = noone;

eff_done = false;
player_reenable = false;

wait = false;
wait_target = false;
wait_stack = false;

discard_play_seq = noone;
channel_seq = noone;
seq_change_channel_1 = noone;
seq_change_channel_2 = noone;
skip_target_1 = false;
allowed_target_opp = true;
allowed_target_player = true;

seq_change_health_1 =noone;
seq_change = noone;
seq_no_target = noone;
shield_seq = noone;

opp = false;
ignore_buffer = false;

depth = -1200;

target = noone;
target_1 = noone;
target_2 = noone;
target_3 = noone;
sys_eff_instructions = noone;