/// @description Insert description here
// You can write your code in this editor

if big_mode = false {
	draw_sprite_general(spell_sprite,0,57,62,333,336,x-60,y-60,0.37,0.37,0,c_white,c_white,c_white,c_white,1);
	draw_sprite_ext(s_spell_frame,0,x,y,0.4,0.4,0,c_white,1);
	
	if moused = true && target_arrows_enabled = true {
		depth = -900;
		if target_1 != noone && target_1.position != "end_turn" {
			if target_1.is_locale = true {
				target_x = target_1.x + 112;
				target_y = target_1.y + 184;
			} else {
				target_x = target_1.x;
				target_y = target_1.y;
			}
			var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
			if y < target_y {
				angle_to_target += 180;
			}
			var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
			draw_sprite_ext(s_target_arrow_red,0,x,y,1,distance_to_target/460,angle_to_target,c_white,1);
			if angle_to_target > 90 or angle_to_target < -90 {
				angle_to_target += 180;
			}
			draw_text_transformed_color(x+(target_x - x)/2,y+(target_y - y)/2,"1",1,1,angle_to_target,c_white,c_white,c_white,c_white,1)
		}
		if target_2 != noone && target_2.position != "end_turn"{
			if target_2.is_locale = true {
				target_x = target_2.x + 112;
				target_y = target_2.y + 184;
			} else {
				target_x = target_2.x;
				target_y = target_2.y;
			}
			var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
			if y < target_y {
				angle_to_target += 180;
			}
			var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
			draw_sprite_ext(s_target_arrow_red,0,x,y,1,distance_to_target/460,angle_to_target,c_white,1);
			if angle_to_target > 90 or angle_to_target < -90 {
				angle_to_target += 180;
			}
			draw_text_transformed_color(x+(target_x - x)/2,y+(target_y - y)/2,"2",1,1,angle_to_target,c_white,c_white,c_white,c_white,1)
		}
		if target_3 != noone && target_3.position != "end_turn" {
			if target_3.is_locale = true {
				target_x = target_3.x + 112;
				target_y = target_3.y + 184;
			} else {
				target_x = target_3.x;
				target_y = target_3.y;
			}
			var angle_to_target = -arctan((target_x - x)/(y - target_y))*57.23;
			if y < target_y {
				angle_to_target += 180;
			}
			var distance_to_target = sqrt(sqr(target_x - x) + sqr(y - target_y));
			draw_sprite_ext(s_target_arrow_red,0,x,y,1,distance_to_target/460,angle_to_target,c_white,1);
			if angle_to_target > 90 or angle_to_target < -90 {
				angle_to_target += 180;
			}
			draw_text_transformed_color(x+(target_x - x)/2,y+(target_y - y)/2,"3",1,1,angle_to_target,c_white,c_white,c_white,c_white,1)
		}
	} else {
		depth = -800;
	}

	if (moused) && (tooltip_created = false) {
		alarm[2] = 100;
		tooltip_created = true;
	}
	
	if (moused = false) && (tooltip_created = true) {
		if tooltip_inst != noone {
			instance_destroy(tooltip_inst);
		}
		tooltip_created = false;
	}
} else {
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	draw_sprite_ext(global.rarity_list[rarity][element][1][0][card_index],0,1513,723,2,2,0,c_white,1);
	
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