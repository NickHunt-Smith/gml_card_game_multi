/// @description Fill circle with element, if channelling
// You can write your code in this editor

global.channelled_left_opp = [global.channelled_left_opp_ruby,global.channelled_left_opp_pearl,global.channelled_left_opp_onyx];
max_channel = 0;
var max_channel_ind = 0;
var tied = false;
for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
	if global.channelled_left_opp[_i] = max_channel {
		tied = true;
	}
	if global.channelled_left_opp[_i] > max_channel {
		max_channel = global.channelled_left_opp[_i];
		max_channel_ind = _i;
		tied = false;
	}
}

draw_set_font(Empower_font)
global.channelled_left_opp_loc_x = x+284;
global.channelled_left_opp_loc_y = y + 134
var channel_print = max_channel;
if max_channel > 20 {
	channel_print = 20;
}
draw_text_colour(global.channelled_left_opp_loc_x,global.channelled_left_opp_loc_y,channel_print,c_maroon,c_maroon,c_maroon,c_maroon,1)

if tied = false
{
	draw_sprite_ext(element_sprites[max_channel_ind],0,x,y,0.3624158,0.3500271,0,c_white,1);
	var increment = global.channelled_left_opp[max_channel_ind]*14.8;
	//draw_sprite_general(gauge_element_sprites[max_channel_ind],0,0,142,448,increment,977,235-(increment*0.68),0.5714286,0.68,0,c_white,c_white,c_white,c_white,1)
}

var radius_gauge = 55;
var gauge_dist_diff = sqrt(sqr(global.channelled_left_opp_loc_x - mouse_x) + sqr(global.channelled_left_opp_loc_y - mouse_y))

var radius_element = 75;
var element_dist_diff = sqrt(sqr(x+105 - mouse_x) + sqr(y+80 - mouse_y))

if element_dist_diff < radius_element or gauge_dist_diff < radius_gauge {
	moused = true;
} else {
	moused = false;
}


if (moused) && (tooltip_created = false) {
	alarm[0] = 50;
	tooltip_created = true;
}

if (moused = false) && (tooltip_created = true){
	if tooltip_inst != noone {
		instance_destroy(tooltip_inst);
	}
	tooltip_created = false;
}