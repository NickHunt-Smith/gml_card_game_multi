/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
if opp = true {
	y = mouse_y + 805;
} else {
	y = mouse_y;
}

draw_sprite_ext(sprite_index,0,x,y,1,2.024,0,c_white,1);
draw_sprite_ext(s_ruby,0,x+x_offset_element,y-756,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-756,"= " + string(channel_arr[0]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_pearl,0,x+x_offset_element,y-656,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-656,"= " + string(channel_arr[1]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_onyx,0,x+x_offset_element,y-556,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-556,"= " + string(channel_arr[2]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_sapphire,0,x+x_offset_element,y-456,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-456,"= " + string(channel_arr[3]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_emerald,0,x+x_offset_element,y-356,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-356,"= " + string(channel_arr[4]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_citrine,0,x+x_offset_element,y-256,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-256,"= " + string(channel_arr[5]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_opal,0,x+x_offset_element,y-156,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-156,"= " + string(channel_arr[6]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_amethyst,0,x+x_offset_element,y-56,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-56,"= " + string(channel_arr[7]),c_maroon,c_maroon,c_maroon,c_maroon,1);