/// @description Insert description here
// You can write your code in this editor

var c_x = camera_get_view_x(view_camera[0]);
var c_y = camera_get_view_y(view_camera[0]); 
x = c_x + 0.5*view_wport[0]-2*40;
y = c_y+0.5*view_hport[0]-2*30;

draw_sprite_ext(sprite_index,0,x,y,2*0.3,2*0.3,0,c_white,1);

draw_sprite_part_ext(sprite_index,0,0,0,sprite_width*volume_percent,sprite_height,x,y,2*0.3,2*0.3,c_maroon,1);

draw_sprite_ext(s_zoom_slider_button,0,x+2*0.3*volume_percent*sprite_width,y+2*0.3*0.5*sprite_height,2*1,2*1,0,c_white,1);

draw_set_font(viking_font);
draw_set_colour(c_black);
draw_text_ext_transformed(x-60*2,y+7*2,"Music Volume",0,1000,2*0.55,2*0.55,0);