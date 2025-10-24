var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]);  

var resize_scale = view_wport[1]/1280;
image_xscale = resize_scale;
image_yscale = resize_scale;

if left = true {
	x = c_x
	y = c_y + 0.5*view_hport[1]
} else if up = true {
	x = c_x + 0.5*view_wport[1]
	y = c_y
} else if right = true {
	x = c_x + view_wport[1]
	y = c_y + 0.5*view_hport[1]
} else if down = true { 
	x = c_x + 0.5*view_wport[1]
	y = c_y + view_hport[1]
}