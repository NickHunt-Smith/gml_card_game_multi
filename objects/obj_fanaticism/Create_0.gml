/// @description Insert description here
// You can write your code in this editor

play_damage_2 = -3;

eff_instructions_1 = "Destroy friendly locale";
eff_instructions_2 = "Deal " + string(abs(play_damage_2)) + " to target locale";
draw_instructions_1 = false;
draw_instructions_2 = false;

eff_type = "none";

card_state = noone;

eff_done = false;

wait = false;
wait_target = false;
wait_stack = false;

sacrifice = noone;
dark_strike = noone;
skip_target_1 = false;
skip_target_2 = false;
allowed_target_opp = true;
allowed_target_player = true;

seq_change_health_1 =noone;
seq_change_health_2 =noone;
seq_change = noone;
seq_no_target = noone;
shield_seq = noone;

opp = false;

depth = -1200;

target = noone;
target_1 = noone;
target_2 = noone;
target_3 = noone;
first_targeted = false;
sys_eff_instructions = noone;