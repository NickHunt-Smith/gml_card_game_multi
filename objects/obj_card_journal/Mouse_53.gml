var resize_scale = view_wport[1]/1280;
var destroy_cards = true;

if element != 0 && mouse_x > x-45*resize_scale - 11.5*resize_scale && mouse_x < x-45*resize_scale + 11.5*resize_scale && mouse_y > y-251.65*resize_scale - 12.5*resize_scale && mouse_y < y-251.65*resize_scale + 12.5*resize_scale {
	element = 0;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 1 && mouse_x > x-80*resize_scale - 11.5*resize_scale && mouse_x < x-80*resize_scale + 11.5*resize_scale && mouse_y > y-251.65*resize_scale - 12.5*resize_scale && mouse_y < y-251.65*resize_scale + 12.5*resize_scale {
	element = 1;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 2 && mouse_x > x-115*resize_scale - 11.5*resize_scale && mouse_x < x-115*resize_scale + 11.5*resize_scale && mouse_y > y-252*resize_scale - 12.5*resize_scale && mouse_y < y-252*resize_scale + 12.5*resize_scale {
	element = 2;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 3 && mouse_x > x-150*resize_scale - 11.5*resize_scale && mouse_x < x-150*resize_scale + 11.5*resize_scale && mouse_y > y-252*resize_scale - 12.5*resize_scale && mouse_y < y-252*resize_scale + 12.5*resize_scale {
	element = 3;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 4 && mouse_x > x-185*resize_scale - 11.5*resize_scale && mouse_x < x-185*resize_scale + 11.5*resize_scale && mouse_y > y-251.65*resize_scale - 12.5*resize_scale && mouse_y < y-251.65*resize_scale + 12.5*resize_scale {
	element = 4;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 5 && mouse_x > x-220*resize_scale - 11.5*resize_scale && mouse_x < x-220*resize_scale + 11.5*resize_scale && mouse_y > y-251.5*resize_scale - 12.5*resize_scale && mouse_y < y-251.5*resize_scale + 12.5*resize_scale {
	element = 5;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element > 6 && mouse_x > x-255*resize_scale - 11.5*resize_scale && mouse_x < x-255*resize_scale + 11.5*resize_scale && mouse_y > y-251*resize_scale - 12.5*resize_scale && mouse_y < y-251*resize_scale + 12.5*resize_scale {
	element = 6;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 1 && mouse_x > x+80*resize_scale - 11.5*resize_scale && mouse_x < x+80*resize_scale + 11.5*resize_scale && mouse_y > y-251.65*resize_scale - 12.5*resize_scale && mouse_y < y-251.65*resize_scale + 12.5*resize_scale {
	element = 1;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 2 && mouse_x > x+115*resize_scale - 11.5*resize_scale && mouse_x < x+115*resize_scale + 11.5*resize_scale && mouse_y > y-252*resize_scale - 12.5*resize_scale && mouse_y < y-252*resize_scale + 12.5*resize_scale {
	element = 2;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 3 && mouse_x > x+150*resize_scale - 11.5*resize_scale && mouse_x < x+150*resize_scale + 11.5*resize_scale && mouse_y > y-252*resize_scale - 12.5*resize_scale && mouse_y < y-252*resize_scale + 12.5*resize_scale {
	element = 3;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 4 && mouse_x > x+185*resize_scale - 11.5*resize_scale && mouse_x < x+185*resize_scale + 11.5*resize_scale && mouse_y > y-251.65*resize_scale - 12.5*resize_scale && mouse_y < y-251.65*resize_scale + 12.5*resize_scale {
	element = 4;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 5 && mouse_x > x+220*resize_scale - 11.5*resize_scale && mouse_x < x+220*resize_scale + 11.5*resize_scale && mouse_y > y-251.5*resize_scale - 12.5*resize_scale && mouse_y < y-251.5*resize_scale + 12.5*resize_scale {
	element = 5;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 6 && mouse_x > x+255*resize_scale - 11.5*resize_scale && mouse_x < x+255*resize_scale + 11.5*resize_scale && mouse_y > y-251*resize_scale - 12.5*resize_scale && mouse_y < y-251*resize_scale + 12.5*resize_scale {
	element = 6;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if element < 7 && mouse_x > x+290*resize_scale - 11.5*resize_scale && mouse_x < x+290*resize_scale + 11.5*resize_scale && mouse_y > y-251*resize_scale - 12.5*resize_scale && mouse_y < y-251*resize_scale + 12.5*resize_scale {
	element = 7;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
} else if mouse_x > x-298*resize_scale - 0.3*75*resize_scale && mouse_x < x-298*resize_scale + 0.3*75*resize_scale && mouse_y > y+193*resize_scale - 0.5*75*resize_scale && mouse_y < y+193*resize_scale + 0.5*75*resize_scale {
	rarity -= 1;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip_reverse);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
	if rarity < 0 {
		if element = 0 {
			rarity += 1;
			destroy_cards = false;
			if page_flip != noone {
				layer_sequence_destroy(page_flip);
				page_flip = noone;
			}
		} else {
			rarity = 4;
			element -= 1;
		}
	}
} else if mouse_x > x+298*resize_scale - 0.3*75*resize_scale && mouse_x < x+298*resize_scale + 0.3*75*resize_scale && mouse_y > y+193*resize_scale - 0.5*75*resize_scale && mouse_y < y+193*resize_scale + 0.5*75*resize_scale {
	rarity += 1;
	if page_flip = noone {
		audio_play_sound(snd_page_turn,10,false);
		page_flip = layer_sequence_create("cards_on_journal",x,y,seq_page_flip);
		layer_sequence_xscale(page_flip,0.5*resize_scale);
		layer_sequence_yscale(page_flip,0.5*resize_scale);
		alarm[0] = 12;
	}
	if rarity > 4 {
		if element = 7 {
			rarity -= 1;
			destroy_cards = false;
			if page_flip != noone {
				layer_sequence_destroy(page_flip);
				page_flip = noone;
			}
		} else {
			rarity = 0;
			element += 1;
		}
	}
} else {
	destroy_cards = false;
}

if destroy_cards = true {
	if card_locale_1 != noone {
		instance_destroy(card_locale_1);
		card_locale_1 = noone;
	}
	if card_locale_2 != noone {
		instance_destroy(card_locale_2);
		card_locale_2 = noone;
	}
	if card_locale_3 != noone {
		instance_destroy(card_locale_3);
		card_locale_3 = noone;
	}
	if card_locale_4 != noone {
		instance_destroy(card_locale_4);
		card_locale_4 = noone;
	}
	if card_spell_1 != noone {
		instance_destroy(card_spell_1);
		card_spell_1 = noone;
	}
	if card_spell_2 != noone {
		instance_destroy(card_spell_2);
		card_spell_2 = noone;
	}
	if card_spell_3 != noone {
		instance_destroy(card_spell_3);
		card_spell_3 = noone;
	}
	if card_spell_4 != noone {
		instance_destroy(card_spell_4);
		card_spell_4 = noone;
	}
}