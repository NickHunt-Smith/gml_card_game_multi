/// @description Insert description here
// You can write your code in this editor

play_damage_1 = -2;

eff_instructions_1 = "Deal " + string(abs(play_damage_1)) + " and Clash friendly locale";
eff_instructions_2 = "Clash target enemy locale";
draw_instructions_1 = false;
draw_instructions_2 = false;

eff_type = "none";

card_state = noone;

eff_done = false;

wait = false;
wait_target = false;
wait_stack = false;

explode = noone;
clash = noone;
skip_target = false;
allowed_target_opp = true;
allowed_target_player = true;

target_1_health = 0;
target_2_health = 0;
seq_change_health_1 =noone;
seq_change_health_2 =noone;
strike_1 = noone;
strike_2 = noone;
seq_change = noone;
seq_no_target = noone;
shield_seq = noone;

opp = false;

depth = -1200;

target = noone;
target_1 = noone;
target_2 = noone;
first_targeted = false;
sys_eff_instructions = noone;