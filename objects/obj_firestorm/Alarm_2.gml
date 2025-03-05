/// @description Insert description here
// You can write your code in this editor

spiral = part_system_create(Ps_firestorm);
part_system_position(spiral, card_state.x+112, card_state.y+184);
part_system_depth(spiral,-1100);

if opp = false {
	firestorm = layer_sequence_create("effect_layer",1524,478,seq_firestorm);
} else {
	firestorm = layer_sequence_create("effect_layer",1524,1009,seq_firestorm);
}

alarm[3] = 160;


