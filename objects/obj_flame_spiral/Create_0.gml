/// @description Insert description here
// You can write your code in this editor

play_damage_1 = -1;
end_turn_damage = -1;

eff_instructions = "Deal " + string(abs(play_damage_1)) + " to target locale";
sys_eff_instructions = noone;
draw_instructions = false;

eff_type = "none";

card_state = noone;

eff_done = false;
has_effect = true;

wait = false;
wait_target = false;

fire_on_card = noone;
fireball = noone;
allowed_target_opp = true;
allowed_target_player = true;

channel_seq = noone;
seq_change_health =noone;
seq_change = noone;
seq_no_target = noone;
shield_seq = noone;

opp = false;

depth = -1200;

target = noone;
target_1 = noone;
skip_target_1 = false;