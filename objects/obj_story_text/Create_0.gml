alpha_mood_lighting = 0;
alpha_story_frame = 0;
alpha_story_portrait = 0;
alpha_story_locale = 0;
alpha_next_text = 0.6;
reverse = false;
fade_in = true;
text_stage = "";

encounter_story = [];
narrator = false;
locale_art = s_amethyst_obelisk_art;
character_art = char_emery_reed;
character_name = "?";
text = "The quick brown fox jumped over the lazy dog.";
curr_scene = 0;
_scene = 14;
_text = 0;
scene_playing = false;
text_rolling = false;
duel_button = noone;
enemy = noone;
unlock_sys = noone;
unlock_card = noone;
unlock_seq = noone;
unlock_seq_done = false;
card_unlocks_element = [];
card_unlocks_rarity = [];
card_unlocks_card_type = [];
card_unlocks_card_index = [];
card_unlocks_iter = 0;

//text = "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog."
chars_revealed = 0;
reveal_speed = 0.5;
text_width_narrator = 515;
text_width_character = 330;

if global.reposition = true {
	alarm[0] = 30;
	zoomed_in = false;
} else {
	zoomed_in = true;
}