/// @description 

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

var file_id = file_text_open_read("opp_" + global.encounter_name + ".json");
var json_string = "";
while (!file_text_eof(file_id)) {
	json_string += file_text_read_string(file_id);
	file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
var progress_data = json_parse(json_string);

element_1 = progress_data[$ "element0"];
element_2 = progress_data[$ "element1"];

var card_iter = 0;
while variable_struct_exists(progress_data,"card" + string(card_iter)) {
	var card_attrs = progress_data[$ "card" + string(card_iter)];
	array_push(deck_rarity,card_attrs[$ "rarity"]);
	array_push(deck_element,card_attrs[$ "element"]);
	array_push(deck_card_type,card_attrs[$ "card_type"]);
	array_push(deck_card_index,card_attrs[$ "card_index"]);
	array_push(deck_target,card_attrs[$ "target"]);
	card_iter += 1;
}
