/// @description Insert description here
// You can write your code in this editor

play_damage_1 = -4;
channel = 4;
channel_threshold = 15;

eff_instructions_1 = "Deal " + string(abs(play_damage_1)) + " to target locale";
draw_instructions_1 = false;

eff_type = "none";

card_state = noone;

eff_done = false;

wait = false;
wait_target = false;
wait_stack = false;

spark = noone;
skip_target_1 = false;
allowed_target_opp = true;
allowed_target_player = true;

seq_change_health_1 =noone;
seq_change = noone;
seq_no_target = noone;
seq_change_channel_1 = noone;
seq_change_channel_2 = noone;
channel_seq = noone;
shield_seq = noone;

opp = false;

depth = -1200;

target = noone;
target_1 = noone;
sys_eff_instructions = noone;