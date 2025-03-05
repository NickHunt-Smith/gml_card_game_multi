/// @description Draw art in locale zone
// You can write your code in this editor

if big_mode = false {
	if destroyed = false {
		
		draw_sprite_general(global.rarity_list[rarity][element][0][1][card_index],0,60,67,330,443,x,y,card_sprite_scale,card_sprite_scale,0,c_white,c_white,c_white,c_white,1)

		//draw_sprite_ext(s_locale_stats,0,x,y+293,0.68,0.68,0,c_white,1)
		//draw_sprite_ext(global.element_sprite_list[element],0,x+25,y+308,0.08,0.08,0,c_white,1)
		//draw_text_colour(x+18,y + 328,channel,c_maroon,c_maroon,c_maroon,c_maroon,1);
		//draw_set_font(Empower_font)
		//draw_text_colour(x+111,y + 328,health_locale,c_maroon,c_maroon,c_maroon,c_maroon,1)
		//draw_sprite_ext(global.rarity_gem_list[rarity],0,x+159,y+299,0.18,0.18,0,c_white,1)
		
		draw_sprite_ext(s_locale_stats,0,x,y+293,0.68,0.68,0,c_white,1)
		draw_sprite_ext(global.element_sprite_list[element],0,x-5,y+308,0.08,0.08,0,c_white,1)
		if channel > 9 {
			draw_text_ext_transformed_color(x+55,y + 309,channel,20,200,0.7,1,0,c_maroon,c_maroon,c_maroon,c_maroon,1)
		} else {
			draw_text_colour(x+55,y + 328,channel,c_maroon,c_maroon,c_maroon,c_maroon,1);
		}
		draw_set_font(Empower_font)
		if health_locale > 9 {
			draw_text_ext_transformed_color(x+203,y + 309,health_locale,20,200,0.7,1,0,c_maroon,c_maroon,c_maroon,c_maroon,1)
		} else {
			draw_text_colour(x+203,y + 328,health_locale,c_maroon,c_maroon,c_maroon,c_maroon,1)
		}
		draw_sprite_ext(s_strength_logo,0,x+168,y+328,0.17,0.17,0,c_white,1)
		draw_sprite_ext(global.rarity_gem_list[rarity],0,x+84,y+299,0.18,0.18,0,c_white,1)
	
		if (moused) && (tooltip_created = false) {
			alarm[2] = 100;
			tooltip_created = true;
		}

		if (moused = false) && (tooltip_created = true){
			if tooltip_inst != noone {
				instance_destroy(tooltip_inst);
			}
			tooltip_created = false;
		}

		if health_locale <= global.rarity_list[rarity][element][0][2][card_index]/2 && overwritten = false {
			draw_sprite_ext(s_cracks,0,x,y,0.49,0.5,0,c_white,1);
			if crack_dust = false {
				crack_sys = layer_sequence_create("effect_layer",x+112,y+184,seq_cracking);
				crack_dust = true;
				screenshake(10, 2, 0.4);
				alarm[1] = 90;
			}
		}
		
		if shielded = true {
			if alpha_shield < 0.01 {
				increment_shield = 0.01;
			} else if alpha_shield > 0.8 {
				increment_shield = -0.01;
			}
			alpha_shield = clamp(alpha_shield+increment_shield,0,1);
			draw_sprite_ext(s_shielded,0,x,y,0.49,0.5,0,c_white,alpha_shield);
		}
		
		if frozen = true {
			draw_sprite_ext(s_frozen,0,x,y,0.49,0.51,0,c_white,1);
		}
		
		if illusory = true {
			illusory = false;
			illusory_sys = part_system_create(Ps_Smoke_illusory);
			part_system_position(illusory_sys, x+112, y+184);
			part_system_depth(illusory_sys,-800);
		}
		
	}
} else {
	draw_sprite_ext(s_spell_background,0,1520,720,5,5,0,c_black,0.6);
	draw_sprite_ext(global.rarity_list[rarity][element][0][0][card_index],0,1513,723,2,2,0,c_white,1);
	
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