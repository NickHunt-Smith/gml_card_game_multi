var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;

if global.journal_active = false && mouse_x > c_x + 0.95*view_wport[1] - 0.5*resize_scale*sprite_width && mouse_x < c_x + 0.95*view_wport[1] + 0.5*resize_scale*sprite_width && mouse_y > c_y + 0.08*view_hport[1] - 0.5*resize_scale*sprite_height && mouse_y < c_y + 0.08*view_hport[1] + 0.5*resize_scale*sprite_height {
	if global.story_active = false {
		settings_menu = instance_create_layer(c_x+0.5*view_wport[1],c_y+0.5*view_hport[1],"cards_on_journal",obj_settings_menu_map);
		global.story_active = true;
	} else {
		if settings_menu != noone {
			instance_destroy(settings_menu);
			settings_menu = noone;
		}
		global.story_active = false;
	}
	audio_play_sound(snd_small_click,10,false);
}