/// @description Insert description here
// You can write your code in this editor

if play_element_seq != noone {
	layer_sequence_destroy(play_element_seq);
	play_element_seq = noone;
}

if card_type = 1 {
	inst_art_spell = scr_play_spell(true,rarity,element,card_index,target_1,target_2,target_3);
	initial_draw = true;
	play_scale = 1;
	sprite_gap = 0;
	playing = false;
	wait_for_opp = true;
	global.player.passed = false;
	global.opponent.passed = false;
} else {
	var effect_arr = scr_play_locale(true,chosen_position,rarity,element,card_index,target_1,target_2,target_3);
	//array_delete(hand_rarity,hand_choice,1);
	//array_delete(hand_card_type,hand_choice,1);
	initial_draw = true;
	play_scale = 1;
	playing = false;
	play_scale_stats = 1;
	sprite_gap = 0;
	wait_for_opp = true;

	global.player.passed = false;
	global.opponent.passed = false;
	// Dont pass prio if timetailor
	var timetailor = false;
	if (element = 5 and rarity = 1 and card_index = 0) or (element = 5 and rarity = 3 and card_index = 0) {
		timetailor = true;
	}
	discard_locale = false;
	if (element = 7 and rarity = 0 and card_index = 2) or (element = 7 and rarity = 1 and card_index = 1){
		discard_locale = true;
	}
	if timetailor = false && discard_locale = false {
		global.priority = "player";
	}
}
