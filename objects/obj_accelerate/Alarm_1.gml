
global.player_enabled = false;
if opp = true {
	global.priority = "player";
} else {
	global.priority = "opp";
}


//for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
//	if global.spell_stack[_i].target_1 != noone {
//		if global.spell_stack[_i].target_1.id = card_state.id && global.spell_stack[_i].order_in_stack != card_state.order_in_stack {
//			global.spell_stack[_i].target_1 = noone;
//			global.spell_stack[_i].effect_function_inst.target_1 = noone;
//		}
//	}
//}

global.resolve_stack = true;
//array_delete(global.spell_stack,card_state.order_in_stack-1,1);