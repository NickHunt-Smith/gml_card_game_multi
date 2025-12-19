var resize_scale = view_wport[1]/1280;
if mouse_x > x-52*resize_scale && mouse_x < x+52*resize_scale && mouse_y > y-27*resize_scale && mouse_y < y+27*resize_scale {
	
	if waiting_for_load = false {
		audio_play_sound(snd_big_click,10,false);
		global.story_active = true;
		waiting_for_load = true;
		depth = depth - 1000;
		portal_seq_1 = layer_sequence_create("cards_on_journal",x_surface + portal_x, y_surface + portal_y,seq_portal);
		alarm[0] = 100;
	}
}