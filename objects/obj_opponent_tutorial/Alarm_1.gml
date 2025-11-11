/// @description Insert description here
// You can write your code in this editor

inst_art_spell = scr_play_spell(true,4,1,1,global.opp_locale_1,global.opp_locale_2,global.player_locale_3);
		
//// Mirror locale
//var target_empty = instance_create_depth(0,0,0,obj_target_empty);
//target_empty.position = "left_middle_opp";
//target_empty.active = false;
//target_empty.opp = true;
//inst_art_spell = scr_play_spell(true,3,2,1,global.opp_locale_1,target_empty,global.player_locale_3);

global.priority = "player";
global.player_enabled = true;
		
//if global.no_pass_prio = false {
//	global.priority = "player";
//	global.player_enabled = true;
//} else {
//	global.no_pass_prio = false;
//}

spell_playing = false;