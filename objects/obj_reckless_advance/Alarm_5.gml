/// @description Insert description here
// You can write your code in this editor

if skip_target = false {

	explode = layer_sequence_create("effect_layer",target_1.x,target_2.y,seq_stray_fireball);
	layer_sequence_headpos(explode,50);
	layer_sequence_y(explode,target_1.y+754);
	layer_sequence_x(explode,target_1.x+112);

	alarm[2] = 50;

} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}
