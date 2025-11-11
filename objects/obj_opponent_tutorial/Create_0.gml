/// @description 
steps = [19,26,63,72,74,96,97,100]
step_iter = 0;

deciding = false;
playing = false;
passed = false;
pass = false;
inst_art_locale = noone;
effect_inst_opp = noone;
lingering_effect_inst_opp = noone;
inst_art_spell = noone;
effect_inst_opp_spell = noone;
spell_playing = false;
tooltip_string_1 = 0;
tooltip_string_2 = 0;
depth = -1000;

play_scale = 1;
play_element_seq = noone;
sprite_gap = 0;
initial_draw=true;
locale_lane_y = 301;
locale_lane_x = 1018;
x_accel = 0;
y_accel = 0;
play_scale_stats = 1;
alpha = 0;
y_stack = 748;
combo = false;
rarity_combo = 0;
element_combo = 0;
card_index_combo = 0;

drained = 0;
destroyed_locales_rarity = [];
destroyed_locales_element = [];
destroyed_locales_card_index = [];

ruby_spells_played = 0;
ruby_bonus_spell_damage = 0;
ruby_spell_damage = 0;

frozen_locales = 0;
consumed = 0;
voids = 0;
discards = 0;

// Setup AI Deck

rarity = 0;
card_type = 0;
element = 0;
card_index = 0;
target_1 = 0;
target_2 = 0;
target_3 = 0;
chosen_position = "left_opp";
hand_choice = 0;
hand_choice_combo = 0;
overwriting = false;

hand_rarity = [];
hand_card_type = [];

element_1 = 4;
element_2 = 1;

common_locales = 0;
uncommon_locales = 0;
rare_locales = 0;
mythic_locales = 0;
legendary_locales = 0;
common_spells = 0;
uncommon_spells = 0;
rare_spells = 0;
mythic_spells = 0;
legendary_spells = 0;

if random(100) < 50 {
	element_1_side = "left";
	element_2_side = "right";
} else {
	element_1_side = "right";
	element_2_side = "left";
}

deck_rarity = [];
deck_element = [];
deck_card_type = [];
deck_card_index = [];
deck_target = [];

// Emerald
// Expanding Forest
array_push(deck_rarity,0);
array_push(deck_element,4);
array_push(deck_card_type,0);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Sun-drenched Clearing
array_push(deck_rarity,0);
array_push(deck_element,4);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Vine Wall
array_push(deck_rarity,0);
array_push(deck_element,4);
array_push(deck_card_type,1);
array_push(deck_card_index,2);
array_push(deck_target,"fortify_any_small");

// Pearl
// Defrosting Forest
array_push(deck_rarity,0);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Icebound River
array_push(deck_rarity,0);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

