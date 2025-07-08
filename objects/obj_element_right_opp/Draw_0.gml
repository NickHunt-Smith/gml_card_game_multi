/// @description Fill circle with element, if channelling
// You can write your code in this editor

if global.end_game_trigger = true && array_max(global.channelled_right_opp) >= global.win_threshold {
	if power_swirling != noone {
		part_system_depth(power_swirling,-1050);
	}
	depth = -1050;
}

global.channelled_right_opp = [global.channelled_right_opp_ruby,global.channelled_right_opp_pearl,global.channelled_right_opp_onyx,global.channelled_right_opp_sapphire,global.channelled_right_opp_emerald,global.channelled_right_opp_citrine,global.channelled_right_opp_opal,global.channelled_right_opp_amethyst];
max_channel = 0;
var max_channel_ind = 0;
var tied = false;
for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
	if global.channelled_right_opp[_i] = max_channel {
		tied = true;
	}
	if global.channelled_right_opp[_i] > max_channel {
		max_channel = global.channelled_right_opp[_i];
		max_channel_ind = _i;
		tied = false;
	}
}

draw_set_font(Empower_font)
global.channelled_right_opp_loc_x = x-73;
global.channelled_right_opp_loc_y = y + 134
var channel_print = max_channel;
if max_channel > global.win_threshold {
	channel_print = global.win_threshold;
}
if global.end_game_trigger = false {
	draw_text_colour(global.channelled_right_opp_loc_x,global.channelled_right_opp_loc_y,channel_print,c_maroon,c_maroon,c_maroon,c_maroon,1)
}


if max_channel_ind != max_channel_ind_current && max_channel > 0 && max_element_seq = noone {
	max_channel_ind_current = max_channel_ind;
	if max_channel_ind = 0 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_ruby);
	} else if max_channel_ind = 1 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_pearl);		
	} else if max_channel_ind = 2 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_onyx);		
	} else if max_channel_ind = 3 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_sapphire);		
	} else if max_channel_ind = 4 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_emerald);		
	} else if max_channel_ind = 5 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_citrine);		
	} else if max_channel_ind = 6 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_opal);		
	} else if max_channel_ind = 7 {
		max_element_seq = layer_sequence_create("effect_layer",x+103,y+93,seq_element_amethyst);		
	}
	alarm[5] = 60;
}


if max_channel > 0 && max_channel_ind_draw != 1000 {
	//draw_sprite_ext(element_sprites[max_channel_ind],0,x,y,0.3624158,0.3500271,0,c_white,1);
	draw_sprite_ext(element_sprites[max_channel_ind_draw],0,x+103,y+93,0.3624158,0.3500271,0,c_white,1);
}

var radius_gauge = 55;
var gauge_dist_diff = sqrt(sqr(global.channelled_right_opp_loc_x - mouse_x) + sqr(global.channelled_right_opp_loc_y - mouse_y))

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