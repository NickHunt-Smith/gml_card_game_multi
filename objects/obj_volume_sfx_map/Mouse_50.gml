/// @description Insert description here
// You can write your code in this editor
var resize_scale = view_wport[1]/1280;

if mouse_x > x && mouse_x < x + 0.3*sprite_width*resize_scale && mouse_y > y + 0.3*0.5*sprite_height*resize_scale - 30*0.3*resize_scale && mouse_y < y + 0.3*0.5*sprite_height*resize_scale + 30*0.3*resize_scale {
	volume_percent = (mouse_x - x)/(0.3*sprite_width*resize_scale);
}