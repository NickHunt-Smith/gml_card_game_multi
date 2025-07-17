/// @description Insert description here
// You can write your code in this editor

var stack_1 = noone;
var stack_2 = noone;
var stack_iter_1 = 0;
var stack_iter_2 = 0;
for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if global.spell_stack[_i].order_in_stack = target_1.order_in_stack {
		stack_1 = global.spell_stack[_i];
		stack_iter_1 = _i;
	} else if global.spell_stack[_i].order_in_stack = target_2.order_in_stack {
		stack_2 = global.spell_stack[_i];
		stack_iter_2 = _i;
	}
}

global.spell_stack[stack_iter_1] = stack_2;
global.spell_stack[stack_iter_2] = stack_1;

global.spell_stack[stack_iter_1].order_in_stack = stack_iter_2;
global.spell_stack[stack_iter_2].order_in_stack = stack_iter_1;

var x_1 = global.spell_stack[stack_iter_1].x
var x_2 = global.spell_stack[stack_iter_2].x

global.spell_stack[stack_iter_1].x = x_2;
global.spell_stack[stack_iter_2].x = x_1;


for (var _i = 0; _i < array_length(global.spell_stack); _i++) {	
	if global.spell_stack[_i].target_1 = target_1 {
		global.spell_stack[_i].target_1 = target_2;
		global.spell_stack[_i].effect_function_inst.target_1 = target_2;
	} else if global.spell_stack[_i].target_1 = target_2 {
		global.spell_stack[_i].target_1 = target_1;
		global.spell_stack[_i].effect_function_inst.target_1 = target_1;
	}
	
	if global.spell_stack[_i].target_2 = target_1 {
		global.spell_stack[_i].target_2 = target_2;
		global.spell_stack[_i].effect_function_inst.target_2 = target_2;
	} else if global.spell_stack[_i].target_2 = target_2 {
		global.spell_stack[_i].target_2 = target_1;
		global.spell_stack[_i].effect_function_inst.target_2 = target_1;
	}
	
	if global.spell_stack[_i].target_3 = target_1 {
		global.spell_stack[_i].target_3 = target_2;
		global.spell_stack[_i].effect_function_inst.target_3 = target_2;
	} else if global.spell_stack[_i].target_3 = target_2 {
		global.spell_stack[_i].target_3 = target_1;
		global.spell_stack[_i].effect_function_inst.target_3 = target_1;
	}
}

alarm[0] = 100;

