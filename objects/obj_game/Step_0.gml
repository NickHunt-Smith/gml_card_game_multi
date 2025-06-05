/// @description Insert description here
// You can write your code in this editor

if game_start = true {
	randomise();
	game_start = false;
	
	alarm[0] = 10;
}


for (var _i = 0; _i < array_length(global.cards_in_hand); _i++) {
	global.cards_in_hand[_i].order_in_hand = _i;
}