var resize_scale = view_wport[1]/1280;
if mouse_x > x-100*resize_scale && mouse_x < x+100*resize_scale && mouse_y > y-34*resize_scale && mouse_y < y+34*resize_scale {
	
	if waiting_for_load = false {
		global.story_active = true;
		global.zoom_inst.resize_scale = 1;
		global.zoom_inst.button_1 = true;
		global.zoom_inst.button_2 = false;
		global.zoom_inst.button_3 = false;
		global.zoom_inst.button_4 = false;
		global.zoom_inst.button_5 = false;
		view_wport[1] = 1280
		view_hport[1] = 720
		camera_set_view_size(view_camera[1], view_wport[1], view_hport[1]);
		var c_x = camera_get_view_x(view_camera[1]);
		var c_y = camera_get_view_y(view_camera[1]); 
		camera_set_view_pos(view_camera[1],c_x-0.5*view_wport[1],c_y-0.5*view_hport[1]);
		x_surface = camera_get_view_x(view_camera[1]);
		y_surface = camera_get_view_y(view_camera[1]);
		portal_x = 0.5*view_wport[1];
		portal_y = 0.5*view_hport[1];
		waiting_for_load = true;
		depth = layer_get_depth("transition");
		portal_seq_1 = layer_sequence_create("transition",x_surface + portal_x, y_surface + portal_y,seq_portal);
		layer_sequence_xscale(portal_seq_1,0.5);
		layer_sequence_yscale(portal_seq_1,0.5);
		alarm[0] = 100;
		audio_play_sound(snd_small_click,10,false);
	}
}