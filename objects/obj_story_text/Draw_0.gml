
if fade_in = true {
	draw_sprite_ext(s_spell_background,0,x,y,5,5,0,c_black,alpha_mood_lighting);
	alpha_mood_lighting = clamp(alpha_mood_lighting + 0.005,0,0.85);
	
	draw_sprite_ext(sprite_index,0,x,y+185,0.4,0.38,0,c_white,alpha_story_elements);
	draw_sprite_general(locale_art,0,60,67,330,443,x-165*0.72,y-218*0.72-160,0.72,0.72,0,c_white,c_white,c_white,c_white,alpha_story_elements);
	draw_sprite_ext(s_story_locale_frame,0,x,y-160,0.7,0.7,0,c_white,alpha_story_elements);
	alpha_story_elements = clamp(alpha_story_elements + 0.005,0,1);
	
	if narrator = false {
		draw_sprite_ext(character_art,0,x-180,y+185,0.105,0.105,0,c_white,alpha_story_elements);
		draw_sprite_ext(s_story_portrait_frame,0,x-180,y+185,0.16,0.16,0,c_white,alpha_story_elements);
	}
}

if alpha_story_elements = 1 {
	chars_revealed += reveal_speed;
	chars_revealed = min(chars_revealed, string_length(text)); 
	var _text_current = string_copy(text, 1, chars_revealed);
	
	draw_set_font(Empower_font_story);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_maroon);
	if narrator = true {
		draw_text_ext(x-270, y+90, _text_current, 28, 565);
	} else {
		draw_text_ext(x-80, y+90, _text_current, 28, 365);
	}
}