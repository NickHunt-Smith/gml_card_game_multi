
if big_mode = true {
	alarm[5] = 1;
	big_mode = false;
	var resize_scale = view_wport[1]/1280;
	var c_x = camera_get_view_x(view_camera[1]);
	var c_y = camera_get_view_y(view_camera[1]); 
	if global.story_active = true {
		image_xscale = lerp(image_xscale,0.65*resize_scale,0.15*resize_scale);
		image_yscale = lerp(image_yscale,0.65*resize_scale,0.15*resize_scale);
		x = c_x + 0.5*view_wport[1];
		y = c_y +0.55*view_hport[1];
	} else {
		image_xscale = 0.23*resize_scale;
		image_yscale = 0.23*resize_scale;
		depth = depth + 1;
		x = x_start;
		y = y_start;
	}
}