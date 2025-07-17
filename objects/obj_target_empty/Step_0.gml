/// @description Insert description here
// You can write your code in this editor

if opp = true {
	if position = "left_opp" {
		x = x_1;
		y = y_1 - 540;
	}
	if position = "left_middle_opp" {
		x = x_2;
		y = y_2 - 540;
	}
	if position = "right_middle_opp" {
		x = x_3;
		y = y_3 - 540;
	}
	if position = "right_opp" {
		x = x_4;
		y = y_4 - 540;
	}
}

if mouse_x > x_1 && mouse_x < x_1 + x_offset && mouse_y > y_1 && mouse_y < y_1 + y_offset {
	moused_1 = true;
} else {
	moused_1 = false;
}

if (!moused_1) && (highlighted_1 = true) {
	part_system_destroy(target_highlight_1);
	highlighted_1 = false;
}

if mouse_x > x_2 && mouse_x < x_2 + x_offset && mouse_y > y_2 && mouse_y < y_2 + y_offset {
	moused_2 = true;
} else {
	moused_2 = false;
}

if (!moused_2) && (highlighted_2 = true) {
	part_system_destroy(target_highlight_2);
	highlighted_2 = false;
}

if mouse_x > x_3 && mouse_x < x_3 + x_offset && mouse_y > y_3 && mouse_y < y_3 + y_offset {
	moused_3 = true;
} else {
	moused_3 = false;
}

if (!moused_3) && (highlighted_3 = true) {
	part_system_destroy(target_highlight_3);
	highlighted_3 = false;
}

if mouse_x > x_4 && mouse_x < x_4 + x_offset && mouse_y > y_4 && mouse_y < y_4 + y_offset {
	moused_4 = true;
} else {
	moused_4 = false;
}

if (!moused_4) && (highlighted_4 = true) {
	part_system_destroy(target_highlight_4);
	highlighted_4 = false;
}

if (global.targeting_empty = true or global.targeting_empty_nonempty = true) && active = true {

	if (moused_1) && (highlighted_1 = false) && global.player_locale_1 = noone{
		target_highlight_1 = part_system_create(Ps_Locale_Highlight_small);
		part_system_position(target_highlight_1,x_1 + 0.5*x_offset,y_1 + 0.5*y_offset);
		part_system_depth(target_highlight_1,-800);
		highlighted_1 = true;
	} 

	if (moused_2) && (highlighted_2 = false) && global.player_locale_2 = noone{
		target_highlight_2 = part_system_create(Ps_Locale_Highlight_small);
		part_system_position(target_highlight_2,x_2 + 0.5*x_offset,y_2 + 0.5*y_offset);
		part_system_depth(target_highlight_2,-800);
		highlighted_2 = true;
	} 

	if (moused_3) && (highlighted_3 = false) && global.player_locale_3 = noone{
		target_highlight_3 = part_system_create(Ps_Locale_Highlight_small);
		part_system_position(target_highlight_3,x_3 + 0.5*x_offset,y_3 + 0.5*y_offset);
		part_system_depth(target_highlight_3,-800);
		highlighted_3 = true;
	} 

	if (moused_4) && (highlighted_4 = false) && global.player_locale_4 = noone {
		target_highlight_4 = part_system_create(Ps_Locale_Highlight_small);
		part_system_position(target_highlight_4,x_4 + 0.5*x_offset,y_4 + 0.5*y_offset);
		part_system_depth(target_highlight_4,-800);
		highlighted_4 = true;
	} 

}

