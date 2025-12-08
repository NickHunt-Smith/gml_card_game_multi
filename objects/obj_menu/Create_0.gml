/// @description Insert description here
// You can write your code in this editor

global.disable_buttons = false;
global.pvp_active = false;
global.tutorial = false;
global.encounter_name = "bandit_grunt";
global.encounter_level = 0;
global.enemy_art = char_alden_quellow;
global.player_art = char_alden_quellow;
global.win_threshold = 30;
menuItems = [];
selectedItem = 0;
do_transition_portal = true;

//Gather Buttons
for (var _i = 0; _i < 5; _i++){
	var _inst = instance_find(obj_Button,_i)
	if _inst != noone then array_push(menuItems, _inst) else break;
}

var _loaded = audio_group_load(music_group);

// delete save files
if file_exists("cards_avail.json") {
	file_delete("cards_avail.json");
}
if file_exists("progress.json") {
	file_delete("progress.json");
}