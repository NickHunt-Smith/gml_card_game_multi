/// @description Insert description here
// You can write your code in this editor

snow = part_system_create(Ps_nullify_spell);
part_system_position(snow, target_1.x, target_1.y);
part_system_depth(snow,-1100);

array_delete(global.spell_stack,target_1.order_in_stack-1,1);
instance_destroy(target_1.effect_function_inst);
instance_destroy(target_1);

alarm[0] = 150;