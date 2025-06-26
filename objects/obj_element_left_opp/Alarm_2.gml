/// @description Insert description here
// You can write your code in this editor

if global.channelled_right_opp[0] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_ruby);
} else if global.channelled_right_opp[1] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_pearl);
} else if global.channelled_right_opp[2] >= global.win_threshold {
	win_sys_2 = layer_sequence_create("above_cards",x+525+105,y+90,seq_victory_onyx);
}
layer_sequence_xscale(win_sys_2,0.8);
layer_sequence_yscale(win_sys_2,0.8);
layer_sequence_angle(win_sys_2,180);

alarm[3] = 150;