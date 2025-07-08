/// @description Insert description here
// You can write your code in this editor

if global.channelled_left_opp[0] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_ruby);
} else if global.channelled_left_opp[1] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_pearl);
} else if global.channelled_left_opp[2] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_onyx);
} else if global.channelled_left_opp[3] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_sapphire);
} else if global.channelled_left_opp[4] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_emerald);
} else if global.channelled_left_opp[5] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_citrine);
} else if global.channelled_left_opp[6] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_opal);
} else if global.channelled_left_opp[7] >= global.win_threshold {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_amethyst);
} 
layer_sequence_xscale(win_sys_1,0.8);
layer_sequence_yscale(win_sys_1,0.8);
layer_sequence_angle(win_sys_1,180);


alarm[2] = 30