/// @description Regular effect

snow = part_system_create(Ps_nullify_spell_amethyst);
part_system_position(snow, target_2.x, target_2.y);
part_system_depth(snow,-1100);

for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if global.spell_stack[_i].target_2 != noone {
		if global.spell_stack[_i].target_2.id = target_2.id && global.spell_stack[_i].order_in_stack != card_state.order_in_stack {
			global.spell_stack[_i].target_2 = noone;
			global.spell_stack[_i].effect_function_inst.target_2 = noone;
		}
	}
}

array_delete(global.spell_stack,target_2.order_in_stack-1,1);
instance_destroy(target_2.effect_function_inst);
instance_destroy(target_2);

alarm[0] = 150;