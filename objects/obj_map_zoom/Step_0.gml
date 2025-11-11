/// @description Insert description here
// You can write your code in this editor

if button_1 = true {
	resize_scale = lerp(resize_scale,1,lerp_amount);
	//resize_scale = lerp(resize_scale,0.5,lerp_amount);
} else if button_2 = true {
	resize_scale = lerp(resize_scale,2,lerp_amount);
} else if button_3 = true {
	resize_scale = lerp(resize_scale,4,lerp_amount);
} else if button_4 = true {
	resize_scale = lerp(resize_scale,1.859375*4,lerp_amount);
} 
//else if button_5 = true {
//	resize_scale = lerp(resize_scale,1.859375*4,lerp_amount);
//}

var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]);

x = c_x + 0.9*view_wport[1]
y = c_y + 0.25*view_hport[1]

view_wport[1] = resize_scale*1280
view_hport[1] = resize_scale*720
camera_set_view_size(view_camera[1], view_wport[1], view_hport[1]);

if resize_scale = 0.5 && resize_scale =1 && resize_scale =2 && resize_scale =4 && resize_scale=1.859375*4 {
	global.resizing = false;
}

if global.resizing = true {
	camera_set_view_pos(view_camera[1],origin_x-0.5*view_wport[1],origin_y-0.5*view_hport[1]);
}

if c_x < 0 {
	camera_set_view_pos(view_camera[1],0,c_y);
	global.resizing = false;
}

if c_y < 0 {
	c_x = camera_get_view_x(view_camera[1]);
	camera_set_view_pos(view_camera[1],c_x,0);
	global.resizing = false;
}

if c_x + view_wport[1] > room_width {
	camera_set_view_pos(view_camera[1],room_width - view_wport[1],c_y);
	global.resizing = false;
}

if c_y + view_hport[1] > room_height {
	c_x = camera_get_view_x(view_camera[1]);
	camera_set_view_pos(view_camera[1],c_x,room_height - view_hport[1]);
	global.resizing = false;
}