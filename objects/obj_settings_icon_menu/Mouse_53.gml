var c_x = camera_get_view_x(view_camera[0]);
var c_y = camera_get_view_y(view_camera[0]); 

if mouse_x > c_x + 0.95*view_wport[0] - sprite_width && mouse_x < c_x + 0.95*view_wport[0] + sprite_width && mouse_y > c_y + 0.08*view_hport[0] - sprite_height && mouse_y < c_y + 0.08*view_hport[0] + sprite_height {
	if global.disable_buttons = false {
		settings_menu = instance_create_layer(c_x+0.5*view_wport[0],c_y+0.5*view_hport[0],"above_buttons",obj_settings_menu_menu);
		global.disable_buttons = true;
	} else {
		if settings_menu != noone {
			instance_destroy(settings_menu);
			settings_menu = noone;
		}
		global.disable_buttons = false;
	}
}