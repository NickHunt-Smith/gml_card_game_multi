/// @description Insert description here
// You can write your code in this editor

if (global.targeting_empty = true or global.targeting_empty_nonempty) && active = true && opp = false {

	if moused_1 = true && global.player_locale_1 = noone {
		position = "left_player";
		global.source_target.target = self;
		if target_highlight_1 != noone {
			part_system_destroy(target_highlight_1);
			target_highlight_1 = noone;
		}
		highlighted_1 = false;
		global.targeting_empty = false;
		global.targeting_empty_nonempty = false;
		active = false;
		x = x_1;
		y = y_1;
	}

	if moused_2 = true && global.player_locale_2 = noone{
		position = "left_middle_player";
		global.source_target.target = self;
		if target_highlight_2 != noone {
			part_system_destroy(target_highlight_2);
			target_highlight_2 = noone;
		}
		highlighted_2 = false;
		global.targeting_empty = false;
		global.targeting_empty_nonempty = false;
		active = false;
		x = x_2;
		y = y_2;
	}

	if moused_3 = true && global.player_locale_3 = noone{
		position = "right_middle_player";
		global.source_target.target = self;
		if target_highlight_3 != noone {
			part_system_destroy(target_highlight_3);
			target_highlight_3 = noone;
		}
		highlighted_3 = false;
		global.targeting_empty = false;
		global.targeting_empty_nonempty = false;
		active = false;
		x = x_3;
		y = y_3;
	}

	if moused_4 = true && global.player_locale_4 = noone{
		position = "right_player";
		global.source_target.target = self;
		if target_highlight_4 != noone {
			part_system_destroy(target_highlight_4);
			target_highlight_4 = noone;
		}
		highlighted_4 = false;
		global.targeting_empty = false;
		global.targeting_empty_nonempty = false;
		active = false;
		x = x_4;
		y = y_4;
	}
}