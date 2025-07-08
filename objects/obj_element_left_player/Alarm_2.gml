/// @description Insert description here
// You can write your code in this editor

if global.channelled_right_player[0] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_ruby);
} else if global.channelled_right_player[1] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_pearl);
} else if global.channelled_right_player[2] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_onyx);
} else if global.channelled_right_player[3] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_sapphire);
} else if global.channelled_right_player[4] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_emerald);
} else if global.channelled_right_player[5] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_citrine);
} else if global.channelled_right_player[6] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_opal);
} else if global.channelled_right_player[7] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_amethyst);
} 
layer_sequence_xscale(win_sys_2,0.8);
layer_sequence_yscale(win_sys_2,0.8);

alarm[3] = 150;