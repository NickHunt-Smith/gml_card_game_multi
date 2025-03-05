/// @description Insert description here
// You can write your code in this editor

if player_scale != 1 {
	if player_scale > 1 {
		combat_player_yscale = clamp(combat_player_yscale + 0.05,1,player_scale);
	} else {
		combat_player_yscale = clamp(combat_player_yscale - 0.05,player_scale,1);
	}
	if opp_scale > 1 {
		combat_opp_yscale = clamp(combat_opp_yscale + 0.05,1,opp_scale);
	} else {
		combat_opp_yscale = clamp(combat_opp_yscale - 0.05,opp_scale,1);
	}
	layer_sequence_yscale(combat_seq_player,0.43*combat_player_yscale);
	layer_sequence_yscale(combat_seq_opp,0.43*combat_opp_yscale);
	layer_sequence_xscale(combat_seq_player,0.43*combat_player_yscale);
	layer_sequence_xscale(combat_seq_opp,0.43*combat_opp_yscale);
	layer_sequence_y(combat_seq_player,919-85.25*combat_player_yscale+85.25);
	layer_sequence_y(combat_seq_opp,578+85.25*combat_opp_yscale-85.25);

	if combat_player_yscale != player_scale {
		alarm[1] = 1;
	} 
}


