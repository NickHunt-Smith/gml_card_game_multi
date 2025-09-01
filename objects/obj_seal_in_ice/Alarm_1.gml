/// @description Insert description here
// You can write your code in this editor

snow = part_system_create(Ps_nullify_spell);
part_system_position(snow, target_1.x, target_1.y);
part_system_depth(snow,-1100);

for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if global.spell_stack[_i].target_1 != noone {
		if global.spell_stack[_i].target_1.id = target_1.id && global.spell_stack[_i].order_in_stack != card_state.order_in_stack {
			global.spell_stack[_i].target_1 = noone;
			global.spell_stack[_i].effect_function_inst.target_1 = noone;
		}
	}
}

array_delete(global.spell_stack,target_1.order_in_stack-1,1);
instance_destroy(target_1.effect_function_inst);
instance_destroy(target_1);

alarm[0] = 150;