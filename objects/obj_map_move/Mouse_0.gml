
if global.story_active = false && global.journal_active = false {
	var c_x = camera_get_view_x(view_camera[1]);
	var c_y = camera_get_view_y(view_camera[1]);

	if left = true {
		camera_set_view_pos(view_camera[1],max(0,c_x-clamp_amount),c_y);
	} else if up = true {
		camera_set_view_pos(view_camera[1],c_x,max(0,c_y-clamp_amount));
	} else if right = true {
		camera_set_view_pos(view_camera[1],min(room_width-camera_get_view_width(view_camera[1]),c_x+clamp_amount),c_y);
	} else if down = true { 
		camera_set_view_pos(view_camera[1],c_x,min(room_height-camera_get_view_height(view_camera[1]),c_y + clamp_amount));
	}
	global.resizing = false;
}