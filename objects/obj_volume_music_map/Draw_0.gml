/// @description Insert description here
// You can write your code in this editor

var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;
x = c_x + 0.5*view_wport[1]-40*resize_scale;
y = c_y+0.5*view_hport[1]-30*resize_scale;

draw_sprite_ext(sprite_index,0,x,y,0.3*resize_scale,0.3*resize_scale,0,c_white,1);

draw_sprite_part_ext(sprite_index,0,0,0,sprite_width*volume_percent,sprite_height,x,y,0.3*resize_scale,0.3*resize_scale,c_maroon,1);

draw_sprite_ext(s_zoom_slider_button,0,x+0.3*volume_percent*sprite_width*resize_scale,y+0.3*0.5*sprite_height*resize_scale,resize_scale,resize_scale,0,c_white,1);

draw_set_font(viking_font);
draw_set_colour(c_black);
draw_text_ext_transformed(x-60*resize_scale,y+7,"Music Volume",0,1000,0.55*resize_scale,0.55*resize_scale,0);