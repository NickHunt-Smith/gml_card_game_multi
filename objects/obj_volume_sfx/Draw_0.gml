/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(s_slider_full,0,x,y,1,1,0,c_maroon,1);

draw_sprite_part(s_slider_full,0,0,0,sprite_width*volume_percent,sprite_height,x,y);

draw_sprite(s_slider_button,0,x+volume_percent*sprite_width,y+0.5*sprite_height);