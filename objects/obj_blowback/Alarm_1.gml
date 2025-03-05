/// @description Insert description here
// You can write your code in this editor

if skip_target_2 = false {
	fireball_2 = layer_sequence_create("effect_layer_higher",target_1.x+112,target_1.y+184,seq_stray_fireball);
	scr_sequence_target(fireball_2,target_2,opp,target_1);
	alarm[3] = 90;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

