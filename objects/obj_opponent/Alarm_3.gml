/// @description Insert description here
// You can write your code in this editor

var effect_arr = scr_play_locale(true,chosen_position,rarity,element,card_index,target_1,target_2,target_3);
array_delete(hand_rarity,hand_choice,1);
array_delete(hand_card_type,hand_choice,1);
global.player.passed = false;
global.priority = "player";
global.player_enabled = true;