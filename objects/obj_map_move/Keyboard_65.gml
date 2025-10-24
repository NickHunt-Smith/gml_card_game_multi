if global.story_active = false {
	var c_x = camera_get_view_x(view_camera[1]);
	var c_y = camera_get_view_y(view_camera[1]);

	if left = true {
		camera_set_view_pos(view_camera[1],max(0,c_x-clamp_amount),c_y);
		global.resizing = false;
	} 
}