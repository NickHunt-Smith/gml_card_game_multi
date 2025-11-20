

var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;
x = c_x + 0.5*view_wport[1];
y = c_y+0.5*view_hport[1];

draw_sprite_ext(s_spell_background,0,x,y,10,10,0,c_black,0.85);

draw_sprite_ext(sprite_index,0,c_x + 0.5*view_wport[1],c_y + 0.5*view_hport[1],0.5*resize_scale,0.5*resize_scale,0,c_white,1);

var journal_page_title = ""
if rarity = 0 {
	journal_page_title += "Common";
} else if rarity = 1 {
	journal_page_title += "Uncommon";
} else if rarity = 2 {
	journal_page_title += "Rare";
} else if rarity = 3 {
	journal_page_title += "Mythic";
} else if rarity = 4 {
	journal_page_title += "Legendary";
}

if element = 0 {
	journal_page_title += " Ruby";
} else if element = 1 {
	journal_page_title += " Pearl";
} else if element = 2 {
	journal_page_title += " Onyx";
} else if element = 3 {
	journal_page_title += " Sapphire";
} else if element = 4 {
	journal_page_title += " Emerald";
} else if element = 5 {
	journal_page_title += " Citrine";
} else if element = 6 {
	journal_page_title += " Opal";
} else if element = 7 {
	journal_page_title += " Amethyst";
}

draw_set_font(viking_font);
draw_set_colour(c_black);
draw_text_ext_transformed(x-163*resize_scale,y-225*resize_scale,journal_page_title,0,1000,resize_scale,resize_scale,0);
draw_text_ext_transformed(x-163*resize_scale,y-195*resize_scale,"Locales",0,1000,resize_scale,resize_scale,0);
draw_text_ext_transformed(x+163*resize_scale,y-225*resize_scale,journal_page_title,0,1000,resize_scale,resize_scale,0);
draw_text_ext_transformed(x+163*resize_scale,y-195*resize_scale,"Spells",0,1000,resize_scale,resize_scale,0);

if element >= 7 {
	draw_sprite_ext(s_card_journal_tab,0,x-290*resize_scale,y-251*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_amethyst,0,x-290*resize_scale,y-251*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+290*resize_scale,y-251*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_amethyst,0,x+290*resize_scale,y-251*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 6 {
	draw_sprite_ext(s_card_journal_tab,0,x-255*resize_scale,y-251*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_opal,0,x-255*resize_scale,y-251*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+255*resize_scale,y-251*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_opal,0,x+255*resize_scale,y-251*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 5 {
	draw_sprite_ext(s_card_journal_tab,0,x-220*resize_scale,y-251.5*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_citrine,0,x-220*resize_scale,y-251.5*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+220*resize_scale,y-251.5*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_citrine,0,x+220*resize_scale,y-251.5*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 4 {
	draw_sprite_ext(s_card_journal_tab,0,x-185*resize_scale,y-251.65*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_emerald,0,x-185*resize_scale,y-251.65*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+185*resize_scale,y-251.65*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_emerald,0,x+185*resize_scale,y-251.65*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 3 {
	draw_sprite_ext(s_card_journal_tab,0,x-150*resize_scale,y-252*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_sapphire,0,x-150*resize_scale,y-252*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+150*resize_scale,y-252*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_sapphire,0,x+150*resize_scale,y-252*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 2 {
	draw_sprite_ext(s_card_journal_tab,0,x-115*resize_scale,y-252*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_onyx,0,x-115*resize_scale,y-252*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+115*resize_scale,y-252*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_onyx,0,x+115*resize_scale,y-252*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

if element >= 1 {
	draw_sprite_ext(s_card_journal_tab,0,x-80*resize_scale,y-251.65*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_pearl,0,x-80*resize_scale,y-251.65*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(s_card_journal_tab,0,x+80*resize_scale,y-251.65*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
	draw_sprite_ext(s_pearl,0,x+80*resize_scale,y-251.65*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);
}

draw_sprite_ext(s_card_journal_tab,0,x-45*resize_scale,y-251.65*resize_scale,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
draw_sprite_ext(s_ruby,0,x-45*resize_scale,y-251.65*resize_scale,0.04*resize_scale,0.04*resize_scale,0,c_white,1);

if reverse = false {
	alpha_next_text = clamp(alpha_next_text-0.005,0.6,1);
} else {
	alpha_next_text = clamp(alpha_next_text+0.005,0.6,1);
}
if alpha_next_text = 0.6 {
	reverse = true;
}
if alpha_next_text = 1 {
	reverse = false;
}
	
draw_sprite_ext(s_move_traingle,0,x+318*resize_scale,y+193*resize_scale,0.3*resize_scale,0.3*resize_scale,270,c_white,alpha_next_text);
draw_sprite_ext(s_move_traingle,0,x-318*resize_scale,y+193*resize_scale,0.3*resize_scale,0.3*resize_scale,90,c_white,alpha_next_text);

// Cards on page
if card_locale_1 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(0)],0) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][0][0][0]);
		card_locale_1 = instance_create_layer(x-252*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_1.x_start = x-252*resize_scale;
		card_locale_1.y_start = y-90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_locales[rarity]);
		card_locale_1 = instance_create_layer(x-252*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_1.x_start = x-252*resize_scale;
		card_locale_1.y_start = y-90*resize_scale;
	}
} else {
	if card_locale_1.big_mode = false {
		card_locale_1.x = x-252*resize_scale;
		card_locale_1.y = y-90*resize_scale;
	}
}

if card_locale_2 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(0)],1) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][0][0][1]);
		card_locale_2 = instance_create_layer(x-73*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_2.x_start = x-73*resize_scale;
		card_locale_2.y_start = y-90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_locales[rarity]);
		card_locale_2 = instance_create_layer(x-73*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_2.x_start = x-73*resize_scale;
		card_locale_2.y_start = y-90*resize_scale;
	}
} else {
	if card_locale_2.big_mode = false {
		card_locale_2.x = x-73*resize_scale;
		card_locale_2.y = y-90*resize_scale;
	}
}

if card_locale_3 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(0)],2) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][0][0][2]);
		card_locale_3 = instance_create_layer(x-252*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_3.x_start = x-252*resize_scale;
		card_locale_3.y_start = y+90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_locales[rarity]);
		card_locale_3 = instance_create_layer(x-252*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_locale_3.x_start = x-252*resize_scale;
		card_locale_3.y_start = y+90*resize_scale;
	}
} else {
	if card_locale_3.big_mode = false {
		card_locale_3.x = x-252*resize_scale;
		card_locale_3.y = y+90*resize_scale;
	}
}

if array_length(global.rarity_list[rarity][element][0][0]) = 4 {
	if card_locale_4 = noone {
		if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(0)],3) {
			object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][0][0][3]);
			card_locale_4 = instance_create_layer(x-73*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
			card_locale_4.x_start = x-73*resize_scale;
			card_locale_4.y_start = y+90*resize_scale;
		} else {
			object_set_sprite(obj_card_journal_card,opp_card_backs_locales[rarity]);
			card_locale_4 = instance_create_layer(x-73*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
			card_locale_4.x_start = x-73*resize_scale;
			card_locale_4.y_start = y+90*resize_scale;
		}
	} else {
		if card_locale_4.big_mode = false {
			card_locale_4.x = x-73*resize_scale;
			card_locale_4.y = y+90*resize_scale;
		}
	}
}

if card_spell_1 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(1)],0) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][1][0][0]);
		card_spell_1 = instance_create_layer(x+257*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_1.x_start = x+257*resize_scale;
		card_spell_1.y_start = y-90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_spells[rarity]);
		card_spell_1 = instance_create_layer(x+257*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_1.x_start = x+257*resize_scale;
		card_spell_1.y_start = y-90*resize_scale;
	}
} else {
	if card_spell_1.big_mode = false {
		card_spell_1.x = x+257*resize_scale;
		card_spell_1.y = y-90*resize_scale;
	}
}

if card_spell_2 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(1)],1) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][1][0][1]);
		card_spell_2 = instance_create_layer(x+78*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_2.x_start = x+78*resize_scale;
		card_spell_2.y_start = y-90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_spells[rarity]);
		card_spell_2 = instance_create_layer(x+78*resize_scale,y-90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_2.x_start = x+78*resize_scale;
		card_spell_2.y_start = y-90*resize_scale;
	}
} else {
	if card_spell_2.big_mode = false {
		card_spell_2.x = x+78*resize_scale;
		card_spell_2.y = y-90*resize_scale;
	}
}

if card_spell_3 = noone {
	if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(1)],2) {
		object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][1][0][2]);
		card_spell_3 = instance_create_layer(x+78*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_3.x_start = x+78*resize_scale;
		card_spell_3.y_start = y+90*resize_scale;
	} else {
		object_set_sprite(obj_card_journal_card,opp_card_backs_spells[rarity]);
		card_spell_3 = instance_create_layer(x+78*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
		card_spell_3.x_start = x+78*resize_scale;
		card_spell_3.y_start = y+90*resize_scale;
	}
} else {
	if card_spell_3.big_mode = false {
		card_spell_3.x = x+78*resize_scale;
		card_spell_3.y = y+90*resize_scale;
	}
}

if array_length(global.rarity_list[rarity][element][1][0]) = 4 {
	if card_spell_4 = noone {
		if array_contains(global.cards_avail_json[$ "element" + string(element)][$ "rarity" + string(rarity)][$ "card_type" + string(1)],3) {
			object_set_sprite(obj_card_journal_card,global.rarity_list[rarity][element][1][0][3]);
			card_spell_4 = instance_create_layer(x+257*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
			card_spell_4.x_start = x+257*resize_scale;
			card_spell_4.y_start = y+90*resize_scale;
		} else {
			object_set_sprite(obj_card_journal_card,opp_card_backs_spells[rarity]);
			card_spell_4 = instance_create_layer(x+257*resize_scale,y+90*resize_scale,"cards_on_journal",obj_card_journal_card);
			card_spell_4.x_start = x+257*resize_scale;
			card_spell_4.y_start = y+90*resize_scale;
		}
	} else {
		if card_spell_4.big_mode = false {
			card_spell_4.x = x+257*resize_scale;
			card_spell_4.y = y+90*resize_scale;
		}
	}
}