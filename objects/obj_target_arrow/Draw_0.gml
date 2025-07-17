/// @description Insert description here
// You can write your code in this editor

if global.source_target.card_state.card_type = 1 {
	x = global.source_target.card_state.x;
	y = global.source_target.card_state.y;
}

var angle_to_mouse = -arctan((mouse_x - x)/(y - mouse_y))*57.23;
if mouse_y > y {
	angle_to_mouse += 180;
}


var mouse_distance = sqrt(sqr(mouse_x - x) + sqr(y - mouse_y))/arrow_height;

draw_sprite_ext(s_target_arrow,0,x,y,mouse_distance,mouse_distance,angle_to_mouse,c_white,1);