var resize_scale = view_wport[1]/1280;
if mouse_x > x-100*resize_scale && mouse_x < x+100*resize_scale && mouse_y > y-34*resize_scale && mouse_y < y+34*resize_scale {
	audio_play_sound(snd_small_click,10,false);
	game_end();
}