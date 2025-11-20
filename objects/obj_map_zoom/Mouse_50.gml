/// @description Insert description here
// You can write your code in this editor
if global.story_active = false && global.journal_active = false {
	if abs(mouse_x - x) < x_origin*resize_scale && mouse_y - y > 0 && mouse_y - y < slider_height*resize_scale {

		var mouse_diff = (mouse_y - y);
		var threshold_1 = y_camera_1*resize_scale + (y_camera_2*resize_scale - y_camera_1*resize_scale)/2
		var threshold_2 = y_camera_2*resize_scale + (y_camera_3*resize_scale - y_camera_2*resize_scale)/2
		var threshold_3 = y_camera_3*resize_scale + (y_camera_4*resize_scale - y_camera_3*resize_scale)/2
		var threshold_4 = y_camera_4*resize_scale + (y_camera_5*resize_scale - y_camera_4*resize_scale)/2

		if mouse_diff < threshold_1 {
			button_1 = true
			button_2 = false
			button_3 = false
			button_4 = false
			button_5 = false
		} else if mouse_diff >= threshold_1 && mouse_diff < threshold_2 {
			button_1 = false
			button_2 = true
			button_3 = false
			button_4 = false
			button_5 = false
		} else if mouse_diff >= threshold_2 && mouse_diff < threshold_3 {
			button_1 = false
			button_2 = false
			button_3 = true
			button_4 = false
			button_5 = false
		} else if mouse_diff >= threshold_3 {
			button_1 = false
			button_2 = false
			button_3 = false
			button_4 = true
			button_5 = false
		}
		//} else if mouse_diff >= threshold_3 && mouse_diff < threshold_4 {
		//	button_1 = false
		//	button_2 = false
		//	button_3 = false
		//	button_4 = true
		//	button_5 = false
		//} 
		//else if mouse_diff >= threshold_4 {
		//	button_1 = false
		//	button_2 = false
		//	button_3 = false
		//	button_4 = false
		//	button_5 = true
		//}
	
		var c_x = camera_get_view_x(view_camera[1]);
		var c_y = camera_get_view_y(view_camera[1]);
	
		origin_x = c_x + 0.5*view_wport[1];
		origin_y = c_y + 0.5*view_hport[1];
		global.resizing = true;
	}
}