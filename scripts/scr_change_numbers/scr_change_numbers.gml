// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_numbers(delta,x,y) {
	if delta > 0 {
		layer_sequence_create("effect_layer", 4000, 4000, seq_change_numbers_pos); 
		var seq_new = sequence_duplicate(seq_change_numbers_pos);   
		delta = "+" + string(delta);
		seq_new.tracks[0].keyframes[0].channels[0].text = delta;
		seq_change = layer_sequence_create("effect_layer",x,y,seq_new);
	} else {
		layer_sequence_create("effect_layer", 4000, 4000, seq_change_numbers_neg); 
		var seq_new = sequence_duplicate(seq_change_numbers_neg);   
		seq_new.tracks[0].keyframes[0].channels[0].text = string(delta);
		seq_change = layer_sequence_create("effect_layer",x,y,seq_new);
		
		//struct.tracks[0].tracks[array_length(struct.tracks[0].tracks)-1].keyframes[0].channels[0].color = [ 1,1,0.21,0.05 ];
		//struct.tracks[0].tracks[array_length(struct.tracks[0].tracks)-1].keyframes[1].channels[0].color = [ 0,1,0.21,0.05 ];
		//struct.tracks[0].tracks[array_length(struct.tracks[0].tracks)-1].keyframes[0].channels[0].colour = [ 1,1,0.21,0.05 ];
		//struct.tracks[0].tracks[array_length(struct.tracks[0].tracks)-1].keyframes[1].channels[0].colour = [ 0,1,0.21,0.05 ];
	}
	return seq_change
}