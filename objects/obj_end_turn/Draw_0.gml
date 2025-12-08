/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite_ext(s_button,0,x-1225,y,0.45,0.45,0,c_white,1);
draw_sprite_ext(s_button_red,0,x-1225,y,0.45,0.45,0,c_white,1);
draw_set_font(Empower_font)
draw_set_colour(c_white);
draw_text_ext_transformed(x-1220,y-38,"Turn",0,100,0.7,0.7,0);
draw_text_ext_transformed(x-1220,y-8,string(global.turn_count+1),0,100,0.7,0.7,0);

if global.player_enabled = true {
	if global.opponent.passed = true && global.stack_active = false {
		draw_set_font(Empower_font)
		draw_text_ext_transformed(x,y-38,"End",0,100,0.7,0.7,0);
		draw_text_ext_transformed(x,y-8,"Turn",0,100,0.7,0.7,0);
	} else {
		if global.stack_active = true && global.spell_stack[array_length(global.spell_stack)-1].opp = true {
			draw_set_font(Empower_font)
			draw_text_ext_transformed(x,y-15,"Resolve",0,100,0.5,0.5,0);
		} else {
			draw_set_font(Empower_font)
			draw_text_ext_transformed(x,y-27,"Pass",0,100,0.8,0.8,0);
		}
	}
} else {
	draw_sprite_ext(s_button_red,0,x,y,0.45,0.45,0,c_white,1);
	if global.targeting = true {
		draw_text_ext_transformed(x,y-38,"No",0,100,0.5,0.5,0);
		draw_text_ext_transformed(x,y-8,"Target",0,100,0.5,0.5,0);
	}
}

//// Combat arrows
//if global.stack_active = false && global.end_turn_active = false {
//	if reverse = false {
//		alpha_fluc = clamp(alpha_fluc-0.005,0.6,1);
//	} else {
//		alpha_fluc = clamp(alpha_fluc+0.005,0.6,1);
//	}
//	if alpha_fluc = 0.6 {
//		reverse = true;
//	}
//	if alpha_fluc = 1 {
//		reverse = false;
//	}

//	if global.player_locale_1 != noone {
//		draw_sprite_ext(s_player_combat_arrow,0,1127,818,1.18,0.67,0,c_white,alpha_fluc);
//	}
//	if global.player_locale_2 != noone {
//		draw_sprite_ext(s_player_combat_arrow,0,1397,818,1.18,0.67,0,c_white,alpha_fluc);
//	}
//	if global.player_locale_3 != noone {
//		draw_sprite_ext(s_player_combat_arrow,0,1661,818,1.18,0.67,0,c_white,alpha_fluc);
//	}
//	if global.player_locale_4 != noone {
//		draw_sprite_ext(s_player_combat_arrow,0,1917,818,1.18,0.67,0,c_white,alpha_fluc);
//	}
//	if global.opp_locale_1 != noone {
//		draw_sprite_ext(s_opp_combat_arrow,0,1127,689,1.18,0.67,180,c_white,alpha_fluc);
//	}
//	if global.opp_locale_2 != noone {
//		draw_sprite_ext(s_opp_combat_arrow,0,1397,689,1.18,0.67,180,c_white,alpha_fluc);
//	}
//	if global.opp_locale_3 != noone {
//		draw_sprite_ext(s_opp_combat_arrow,0,1661,689,1.18,0.67,180,c_white,alpha_fluc);
//	}
//	if global.opp_locale_4 != noone {
//		draw_sprite_ext(s_opp_combat_arrow,0,1917,689,1.18,0.67,180,c_white,alpha_fluc);
//	}
	
//}
