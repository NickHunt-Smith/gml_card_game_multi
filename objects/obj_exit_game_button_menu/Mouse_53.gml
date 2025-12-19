if mouse_x > x-2*100 && mouse_x < x+2*100 && mouse_y > y-2*34 && mouse_y < y+2*34 {
	audio_play_sound(snd_small_click,10,false);
	game_end();
}