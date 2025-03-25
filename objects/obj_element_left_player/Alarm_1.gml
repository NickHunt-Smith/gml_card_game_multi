/// @description Insert description here
// You can write your code in this editor

if global.channelled_left_player[0] >= 20 {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_ruby);
} else if global.channelled_left_player[1] >= 20 {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_pearl);
} else if global.channelled_left_player[2] >= 20 {
	win_sys_1 = layer_sequence_create("above_cards",x+105,y+90,seq_victory_onyx);
}
layer_sequence_xscale(win_sys_1,0.8);
layer_sequence_yscale(win_sys_1,0.8);



alarm[2] = 30