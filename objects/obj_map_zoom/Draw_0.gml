/// @description Insert description here
// You can write your code in this editor

var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 

draw_sprite_ext(s_zoom_slider,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1],resize_scale,resize_scale,0,c_white,1);

if button_1 = true {
	draw_sprite_ext(s_zoom_slider_button,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1] + y_camera_1*resize_scale,resize_scale,resize_scale,0,c_white,1);
} else if button_2 = true {
	draw_sprite_ext(s_zoom_slider_button,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1] + y_camera_2*resize_scale,resize_scale,resize_scale,0,c_white,1);
} else if button_3 = true {
	draw_sprite_ext(s_zoom_slider_button,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1] + y_camera_3*resize_scale,resize_scale,resize_scale,0,c_white,1);
} else if button_4 = true {
	draw_sprite_ext(s_zoom_slider_button,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1] + y_camera_4*resize_scale,resize_scale,resize_scale,0,c_white,1);
} else if button_5 = true {
	draw_sprite_ext(s_zoom_slider_button,0,c_x + 0.9*view_wport[1],c_y + 0.25*view_hport[1] + y_camera_5*resize_scale,resize_scale,resize_scale,0,c_white,1);
}