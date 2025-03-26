/// @description Insert description here
// You can write your code in this editor

if play_element_seq != noone {
	layer_sequence_destroy(play_element_seq);
	play_element_seq = noone;
}

if card_type = 1 {
	inst_art_spell = scr_play_spell(true,rarity,element,card_index,target_1,target_2,target_3);
	array_delete(hand_rarity,hand_choice,1);
	array_delete(hand_card_type,hand_choice,1);
	initial_draw = true;
	play_scale = 1;
	sprite_gap = 0;
	
	if combo = false {
		global.player.passed = false;
		global.priority = "player";
		global.player_enabled = true;
		playing = false;
		deciding = false;
	} else {
		alarm[3] = 65;
		rarity = rarity_combo;
		element = element_combo;
		card_index = card_index_combo;
		combo = false;
		array_delete(hand_rarity,hand_choice_combo,1);
		array_delete(hand_card_type,hand_choice_combo,1);
	}
} else {
	var effect_arr = scr_play_locale(true,chosen_position,rarity,element,card_index,target_1,target_2,target_3);
	array_delete(hand_rarity,hand_choice,1);
	array_delete(hand_card_type,hand_choice,1);
	playing = false;
	initial_draw = true;
	deciding = false;
	play_scale = 1;
	play_scale_stats = 1;
	sprite_gap = 0;

	global.player.passed = false;
	global.priority = "player";
	global.player_enabled = true;
}
