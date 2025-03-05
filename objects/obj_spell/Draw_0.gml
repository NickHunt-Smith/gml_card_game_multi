/// @description Draw a card highlight when moused over.
// If the player is mousing over this card, make it moused.
if (global.player_enabled = true) {
	
	if (moused) && (obj_mouse_manager.grabbed_card = self) {
		if (y < 1200) && (x > 1000) && (x < 2050) && (play_area_active = false) {
			play_area_highlight = part_system_create(Ps_Magic_lights_Shimmer_2);
			part_system_position(play_area_highlight,1522,480);
			part_system_depth(play_area_highlight,-1000);
			play_area_alpha = 0;
			play_area_active = true;
		} else if ((y > 1200) or (x < 1000) or (x > 2050)) && (play_area_active = true) {
			part_system_destroy(play_area_highlight);
			play_area_active = false;
		}
	}

	if (moused) && (obj_mouse_manager.grabbed_card = self) && (border_active = false)
	{
		// Draw pfx around the card.
		global._pfx_border_top = part_system_create(pfx_border_top);
		part_system_position(global._pfx_border_top, x+border_x_top, y+ border_y_top);
		part_system_depth(global._pfx_border_top,-1000);
		global._pfx_border_right = part_system_create(pfx_border_right);
		part_system_position(global._pfx_border_right, x+border_x_right, y+ border_y_right);
		part_system_depth(global._pfx_border_right,-1000);
		global._pfx_border_bottom = part_system_create(pfx_border_bottom);
		part_system_position(global._pfx_border_bottom, x+border_x_bottom, y+ border_y_bottom);
		part_system_depth(global._pfx_border_bottom,-1000);
		global._pfx_border_left = part_system_create(pfx_border_left);
		part_system_position(global._pfx_border_left, x+border_x_left, y+ border_y_left);
		part_system_depth(global._pfx_border_left,-1000);
		border_active = true;
	}
	else if (border_active = true) && (obj_mouse_manager.grabbed_card = self)
	{	
		part_system_position(global._pfx_border_top, x+border_x_top, y+border_y_top);
		part_system_position(global._pfx_border_right, x+border_x_right, y+border_y_right);
		part_system_position(global._pfx_border_bottom, x+border_x_bottom, y+border_y_bottom);
		part_system_position(global._pfx_border_left, x+border_x_left, y+border_y_left);
	}
	else if (border_active = true) && (obj_mouse_manager.grabbed_card != self)
	{
		part_system_destroy(global._pfx_border_top);
		part_system_destroy(global._pfx_border_right);
		part_system_destroy(global._pfx_border_bottom);
		part_system_destroy(global._pfx_border_left);
		border_active = false
	}
	
	
}

if big_mode = true {
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	if tooltip_extra = true {
		var tooltip_string = string(tooltip_counter) + " " + tooltip_text;
		if tooltip_text_plural = true && tooltip_counter!=1 {
			tooltip_string += "s";
		}
		draw_set_font(Empower_font);
		draw_sprite_ext(s_effect_box,0,1520+4,720+590,1.505,0.6,0,c_white,1);
		draw_text_colour(1520,720+50+590,tooltip_string,c_maroon,c_maroon,c_maroon,c_maroon,1);
	}
}

draw_self()

if play_area_active {
	play_area_alpha = clamp(play_area_alpha+0.005,0,0.3);
	draw_sprite_ext(s_spell_background,0,1522,480,0.75,0.8,0,c_white,play_area_alpha);
}