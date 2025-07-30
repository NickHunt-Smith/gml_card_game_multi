/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if global.spell_stack[_i].order_in_stack != card_state.order_in_stack {
		if global.spell_stack[_i].target_1 != noone {
			if global.spell_stack[_i].target_1.id = target_1.id {
				global.spell_stack[_i].target_1 = target_2;
				global.spell_stack[_i].effect_function_inst.target_1 = target_2;
			} else if global.spell_stack[_i].target_1.id = target_2.id {
				global.spell_stack[_i].target_1 = target_1;
				global.spell_stack[_i].effect_function_inst.target_1 = target_1;
			}
		}
		
		if global.spell_stack[_i].target_2 != noone {
			if global.spell_stack[_i].target_2.id = target_1.id {
				global.spell_stack[_i].target_2 = target_2;
				global.spell_stack[_i].effect_function_inst.target_2 = target_2;
			} else if global.spell_stack[_i].target_2.id = target_2.id {
				global.spell_stack[_i].target_2 = target_1;
				global.spell_stack[_i].effect_function_inst.target_2 = target_1;
			}
		}
		
		if global.spell_stack[_i].target_3 != noone {
			if global.spell_stack[_i].target_3.id = target_1.id {
				global.spell_stack[_i].target_3 = target_2;
				global.spell_stack[_i].effect_function_inst.target_3 = target_2;
			} else if global.spell_stack[_i].target_3.id = target_2.id {
				global.spell_stack[_i].target_3 = target_1;
				global.spell_stack[_i].effect_function_inst.target_3 = target_1;
			}
		}
	}
}

var position_1 = target_1.position;
var position_2 = target_2.position;

target_1.position = position_2;
target_2.position = position_1;

linger_1 = target_1.lingering_effect_function_inst;
linger_2 = target_2.lingering_effect_function_inst;



if position_1 = "left_opp" {
	global.opp_locale_1 = target_2;
	target_2.y = 301;
	target_2.x = 1018;
} else if position_1 = "left_middle_opp" {
	global.opp_locale_2 = target_2;
	target_2.y = 301;
	target_2.x = 1283;
} else if position_1 = "right_middle_opp" {
	global.opp_locale_3 = target_2;
	target_2.y = 301;
	target_2.x = 1545;
} else if position_1 = "right_opp" {
	global.opp_locale_4 = target_2;
	target_2.y = 301;
	target_2.x = 1805;
} else if position_1 = "left_player" {
	global.player_locale_1 = target_2;
	target_2.y = 844;
	target_2.x = 1018;
} else if position_1 = "left_middle_player" {
	global.player_locale_2 = target_2;
	target_2.y = 844;
	target_2.x = 1283;
} else if position_1 = "right_middle_player" {
	global.player_locale_3 = target_2;
	target_2.y = 844;
	target_2.x = 1545;
} else if position_1 = "right_player" {
	global.player_locale_4 = target_2;
	target_2.y = 844;
	target_2.x = 1805;
}

if position_2 = "left_opp" {
	global.opp_locale_1 = target_1;
	target_1.y = 301;
	target_1.x = 1018;
} else if position_2 = "left_middle_opp" {
	global.opp_locale_2 = target_1;
	target_1.y = 301;
	target_1.x = 1283;
} else if position_2 = "right_middle_opp" {
	global.opp_locale_3 = target_1;
	target_1.y = 301;
	target_1.x = 1545;
} else if position_2 = "right_opp" {
	global.opp_locale_4 = target_1;
	target_1.y = 301;
	target_1.x = 1805;
} else if position_2 = "left_player" {
	global.player_locale_1 = target_1;
	target_1.y = 844;
	target_1.x = 1018;
} else if position_2 = "left_middle_player" {
	global.player_locale_2 = target_1;
	target_1.y = 844;
	target_1.x = 1283;
} else if position_2 = "right_middle_player" {
	global.player_locale_3 = target_1;
	target_1.y = 844;
	target_1.x = 1545;
} else if position_2 = "right_player" {
	global.player_locale_4 = target_1;
	target_1.y = 844;
	target_1.x = 1805;
}

alarm[4] = 100;

