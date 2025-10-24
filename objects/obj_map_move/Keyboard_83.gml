if global.story_active = false {
	var c_x = camera_get_view_x(view_camera[1]);
	var c_y = camera_get_view_y(view_camera[1]);

	if down = true { 
		camera_set_view_pos(view_camera[1],c_x,min(room_height-camera_get_view_height(view_camera[1]),c_y + clamp_amount));
		global.resizing = false;
	}
}