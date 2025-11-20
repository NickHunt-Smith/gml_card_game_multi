/// @description Check if the cursor is over us.
// If the cursor is over us
var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;

if (big_mode = false) {
	if (collision_point(mouse_x,mouse_y,self,false,false)) {
		moused = true;
	} else {
		moused = false;
	}
	
	if (moused = true)
	{
		if global.story_active = true {
			image_xscale = lerp(image_xscale,0.66*resize_scale,0.15*resize_scale);
			image_yscale = lerp(image_yscale,0.66*resize_scale,0.15*resize_scale);
		} else {
			image_xscale = lerp(image_xscale,0.25*resize_scale,0.15*resize_scale);
			image_yscale = lerp(image_yscale,0.25*resize_scale,0.15*resize_scale);
		}
	} else {
		if global.story_active = true {
			image_xscale = lerp(image_xscale,0.65*resize_scale,0.15*resize_scale);
			image_yscale = lerp(image_yscale,0.65*resize_scale,0.15*resize_scale);
		} else {
			image_xscale = lerp(image_xscale,0.22*resize_scale,0.15*resize_scale);
			image_yscale = lerp(image_yscale,0.22*resize_scale,0.15*resize_scale);
		}
	}
} else {
	x = c_x + 0.5*view_wport[1];
	y = c_y+0.5*view_hport[1];
}

image_alpha = lerp(image_alpha, 1, 0.08);