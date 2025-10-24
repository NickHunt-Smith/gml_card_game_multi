
if global.story_active = false {
	if button_2 = true {
		button_1 = true
		button_2 = false
		button_3 = false
		button_4 = false
		button_5 = false
	} else if button_3 = true {
		button_1 = false
		button_2 = true
		button_3 = false
		button_4 = false
		button_5 = false
	} else if button_4 = true {
		button_1 = false
		button_2 = false
		button_3 = true
		button_4 = false
		button_5 = false
	} else if button_5 = true {
		button_1 = false
		button_2 = false
		button_3 = false
		button_4 = true
		button_5 = false
	} 

	var c_x = camera_get_view_x(view_camera[1]);
	var c_y = camera_get_view_y(view_camera[1]);
	
	origin_x = c_x + 0.5*view_wport[1];
	origin_y = c_y + 0.5*view_hport[1];
	global.resizing = true;
}