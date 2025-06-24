/// @description Insert description here
// You can write your code in this editor

rarity = 1;
element = 1;
card_type = 1;
card_attr = 1;
card_index = 1;
health_locale = 0;
channel = 0;
memory_channel = 0;
health_memory = 0;
var effect_function = noone;
effect_function_inst = noone;
var lingering_effect_function_inst = noone;
destroyed_eff = noone;
position = "left player";
opp = false;
depth = -800;
is_locale = true;
play_seq = noone;
just_played = true;
alpha = 1;

x_memory = 0;
y_memory = 0;
yrotation = 0;
xrotation = 0;
max_angle = 15;

tooltip_inst = noone;
tooltip_created = false;
tooltip_extra = false;
tooltip_text = "";
tooltip_text_plural = false;
tooltip_counter = 0;

channelling = false;
channelled_sys = noone;
target_highlight = noone;
highlighted = false;
crack_sys = noone;
destroy_sys = noone;
crack_dust = false;
destroy_dust = false;
destroyed = false;
time = 0;
destroy = true;
moused = false;
enable_end_turn_later = false;
big_mode = false;
frozen = false;
frozen_memory = false;
unfreeze = noone;
shielded = false;
alpha_shield = 0.8;
increment_shield = -0.01;
clashed = false;
illusory = false;
illusory_sys = noone;
was_damaged = false;
ruby_spell_increase = false;
overwritten = false;
overwriting = false;
card_sprite_scale = 0.67;
enable_player_after_effect = true;