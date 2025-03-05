/// @description 

deciding = false;
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
depth = -800;

drained = 0;
destroyed_locales_rarity = [];
destroyed_locales_element = [];
destroyed_locales_card_index = [];

ruby_spells_played = 0;
ruby_bonus_spell_damage = 0;
ruby_spell_damage = 0;

frozen_locales = 0;

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
overwriting = false;

hand_rarity = [];
hand_card_type = [];

element_1 = 0;
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

// Ruby
// Dormant Volcano
array_push(deck_rarity,0);
array_push(deck_element,0);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Spark
array_push(deck_rarity,0);
array_push(deck_element,0);
array_push(deck_card_type,1);
array_push(deck_card_index,0);
array_push(deck_target,"damage_any_small");

// Ruby Quarry
array_push(deck_rarity,1);
array_push(deck_element,0);
array_push(deck_card_type,0);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Stray Fireball
array_push(deck_rarity,1);
array_push(deck_element,0);
array_push(deck_card_type,1);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Gates of Delgar
array_push(deck_rarity,2);
array_push(deck_element,0);
array_push(deck_card_type,0);
array_push(deck_card_index,2);
array_push(deck_target,"none");

// Set Ablaze
array_push(deck_rarity,2);
array_push(deck_element,0);
array_push(deck_card_type,1);
array_push(deck_card_index,1);
array_push(deck_target,"damage_any_big");

// Delgar Geysers
array_push(deck_rarity,3);
array_push(deck_element,0);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Eye of the Firestorm
array_push(deck_rarity,3);
array_push(deck_element,0);
array_push(deck_card_type,1);
array_push(deck_card_index,0);
array_push(deck_target,"damage_big_2");

// Firestorm
array_push(deck_rarity,4);
array_push(deck_element,0);
array_push(deck_card_type,0);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Firesight
array_push(deck_rarity,4);
array_push(deck_element,0);
array_push(deck_card_type,1);
array_push(deck_card_index,0);
array_push(deck_target,"damage_any_small");

///////////////////////////////////////////////////////////////
// Defrosting Forest
array_push(deck_rarity,0);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Marble Foundations
array_push(deck_rarity,0);
array_push(deck_element,1);
array_push(deck_card_type,1);
array_push(deck_card_index,1);
array_push(deck_target,"fortify_any_small");

// Evershear Entryway
array_push(deck_rarity,1);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,2);
array_push(deck_target,"none");

// Preserve
array_push(deck_rarity,1);
array_push(deck_element,1);
array_push(deck_card_type,1);
array_push(deck_card_index,1);
array_push(deck_target,"fortify_any_small");

// Heart Labyrinth
array_push(deck_rarity,2);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Ice Shroud
array_push(deck_rarity,2);
array_push(deck_element,1);
array_push(deck_card_type,1);
array_push(deck_card_index,0);
array_push(deck_target,"freeze_any");

// Eternal Blueflame
array_push(deck_rarity,3);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,0);
array_push(deck_target,"none");

// Avalanche
array_push(deck_rarity,3);
array_push(deck_element,1);
array_push(deck_card_type,1);
array_push(deck_card_index,1);
array_push(deck_target,"none");

// Certona Tundra
array_push(deck_rarity,4);
array_push(deck_element,1);
array_push(deck_card_type,0);
array_push(deck_card_index,2);
array_push(deck_target,"none");

// Isolate
array_push(deck_rarity,4);
array_push(deck_element,1);
array_push(deck_card_type,1);
array_push(deck_card_index,2);
array_push(deck_target,"destroy_frozen");