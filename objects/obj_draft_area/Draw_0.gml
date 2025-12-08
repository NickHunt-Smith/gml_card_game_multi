
if scry_phase_seq = noone {
	//if emit_destroy = false {
	//	rarity_alpha = 0;
	//} else {
	//	rarity_alpha = clamp(rarity_alpha+0.005,0,1);
	//}

	if view_opp = false {
		draw_sprite_ext(sprite_index,0,x+15,y-115,1.685,1.8,0,c_white,image_alpha);
		//if rarity_current = 0 {
		//	draw_sprite_ext(s_common_centred,0,x+15,y+140,0.4,0.4,0,c_white,rarity_alpha);
		//} else if rarity_current = 1 {
		//	draw_sprite_ext(s_uncommon_centred,0,x+15,y+140,0.4,0.4,0,c_white,rarity_alpha);
		//} else if rarity_current = 2 {
		//	draw_sprite_ext(s_rare_centred,0,x+15,y+140,0.4,0.4,0,c_white,rarity_alpha);
		//} else if rarity_current = 3 {
		//	draw_sprite_ext(s_mythic_centred,0,x+15,y+140,0.4,0.4,0,c_white,rarity_alpha);
		//} else if rarity_current = 4 {
		//	draw_sprite_ext(s_legendary_centred,0,x+15,y+140,0.4,0.4,0,c_white,rarity_alpha);
		//}
	}

	if button_draw = true {
		if (mouse_x < 1527 + 48 and mouse_x > 1527 - 48) and (mouse_y < 753 + 48 and mouse_y > 753 - 48) {
			draw_sprite_ext(s_eye_button,0,1527,753,0.3,0.3,0,c_aqua,1);
		} else {
			draw_sprite_ext(s_eye_button,0,1527,753,0.3,0.3,0,c_white,1);
		}
	}

	if reroll_active = true && global.rerolls_available > 0 {
		draw_sprite_ext(s_reroll_icon,0,2136,753,0.25,0.25,0,c_white,1);
		draw_set_colour(c_white);
		draw_text_transformed(2136,753,string(global.rerolls_available),0.7,0.7,0);
	
		if sqrt(sqr(mouse_x-2136) + sqr(mouse_y-753)) < 70 {
			draw_sprite_ext(s_reroll_icon,0,2136,753,0.25,0.25,0,c_black,1);
			if reroll_shimmer = noone {
				reroll_shimmer = part_system_create(Ps_Portal_Circle_Red_no_target);
				part_system_position(reroll_shimmer, 2136, 753);
				part_system_depth(reroll_shimmer,-1100);
			}
		}
	}

	if reroll_shimmer != noone && (reroll_active = false or global.rerolls_available < 1 or sqrt(sqr(mouse_x-2136) + sqr(mouse_y-753)) > 70) {
		part_system_destroy(reroll_shimmer);
		reroll_shimmer = noone;
	}
}