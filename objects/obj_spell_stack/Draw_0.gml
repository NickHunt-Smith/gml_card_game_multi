/// @description Insert description here
// You can write your code in this editor

var ruby_thread = false;
var pearl_thread = false;
var onyx_thread = false;
var sapphire_thread = false;
var emerald_thread = false;
var citrine_thread = false;
var opal_thread = false;
var amethyst_thread = false;
for (var _i = 0; _i < array_length(global.spell_stack); _i++) {
	if instance_exists(global.spell_stack[_i]) {
		if global.spell_stack[_i].element = 0 {
			ruby_thread = true;
		} else if global.spell_stack[_i].element = 1 {
			pearl_thread = true;
		} else if global.spell_stack[_i].element = 2 {
			onyx_thread = true;
		} else if global.spell_stack[_i].element = 3 {
			sapphire_thread = true;
		} else if global.spell_stack[_i].element = 4 {
			emerald_thread = true;
		} else if global.spell_stack[_i].element = 5 {
			citrine_thread = true;
		} else if global.spell_stack[_i].element = 6 {
			opal_thread = true;
		} else if global.spell_stack[_i].element = 7 {
			amethyst_thread = true;
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
if strand_4 = noone && sapphire_thread = true {
	strand_4 = part_system_create(Ps_thread_sapphire);
	part_system_position(strand_4, 2580,752);
	part_system_depth(strand_4,-500);
} 
if strand_5 = noone && emerald_thread = true {
	strand_5 = part_system_create(Ps_thread_emerald);
	part_system_position(strand_5, 2580,752);
	part_system_depth(strand_5,-500);
} 
if strand_6 = noone && citrine_thread = true {
	strand_6 = part_system_create(Ps_thread_citrine);
	part_system_position(strand_6, 2580,752);
	part_system_depth(strand_6,-500);
} 
if strand_7 = noone && opal_thread = true {
	strand_7 = part_system_create(Ps_thread_opal);
	part_system_position(strand_7, 2580,752);
	part_system_depth(strand_7,-500);
}
if strand_8 = noone && amethyst_thread = true {
	strand_8 = part_system_create(Ps_thread_amethyst);
	part_system_position(strand_8, 2580,752);
	part_system_depth(strand_8,-500);
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
if strand_4 != noone && sapphire_thread = false {
	part_system_destroy(strand_4);
	strand_4 = noone;
}
if strand_5 != noone && emerald_thread = false {
	part_system_destroy(strand_5);
	strand_5 = noone;
}
if strand_6 != noone && citrine_thread = false {
	part_system_destroy(strand_6);
	strand_6 = noone;
}
if strand_7 != noone && opal_thread = false {
	part_system_destroy(strand_7);
	strand_7 = noone;
}
if strand_8 != noone && amethyst_thread = false {
	part_system_destroy(strand_8);
	strand_8 = noone;
}