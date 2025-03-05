/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
if opp = true {
	y = mouse_y + 400;
} else {
	y = mouse_y;
}

draw_self();
draw_sprite_ext(s_ruby,0,x-5,y-395,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-342,"= " + string(channel_arr[0]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_pearl,0,x-5,y-295,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-242,"= " + string(channel_arr[1]),c_maroon,c_maroon,c_maroon,c_maroon,1);
draw_sprite_ext(s_onyx,0,x-5,y-195,0.2,0.2,0,c_white,1);
draw_text_color(x+150,y-142,"= " + string(channel_arr[2]),c_maroon,c_maroon,c_maroon,c_maroon,1);