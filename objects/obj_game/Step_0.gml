/// @description Insert description here
// You can write your code in this editor

if game_start = true {
	randomise();
	global.opponent = instance_create_depth(0,0,0,obj_opponent);
	global.player = instance_create_depth(0,0,0,obj_player);
	game_start = false;
	global.turn_count = 0;
	global.drafting = true;
	alarm[0] = 50;
}


for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
	global.cards_in_hand[_i].order_in_hand = _i;
}