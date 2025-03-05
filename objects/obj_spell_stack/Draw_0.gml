/// @description Insert description here
// You can write your code in this editor

var ruby_thread = false;
var pearl_thread = false;
var onyx_thread = false;
for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if instance_exists(global.spell_stack[_i]) {
		if global.spell_stack[_i].element = 0 {
			ruby_thread = true;
		} else if global.spell_stack[_i].element = 1 {
			pearl_thread = true;
		} else if global.spell_stack[_i].element = 2 {
			onyx_thread = true;
		}
	}
}

if strand_1 = noone && ruby_thread = true {
	strand_1 = part_system_create(Ps_thread_ruby);
	part_system_position(strand_1, 2580,752);
	part_system_depth(strand_1,-500);
}
if strand_2 = noone && pearl_thread = true {
	strand_2 = part_system_create(Ps_thread_pearl);
	part_system_position(strand_2, 2580,752);
	part_system_depth(strand_2,-500);
}
if strand_3 = noone && onyx_thread = true {
	strand_3 = part_system_create(Ps_thread_onyx);
	part_system_position(strand_3, 2580,752);
	part_system_depth(strand_3,-500);
}

if strand_1 != noone && ruby_thread = false {
	part_system_destroy(strand_1);
	strand_1 = noone;
}
if strand_2 != noone && pearl_thread = false {
	part_system_destroy(strand_2);
	strand_2 = noone;
}
if strand_3 != noone && onyx_thread = false {
	part_system_destroy(strand_3);
	strand_3 = noone;
}