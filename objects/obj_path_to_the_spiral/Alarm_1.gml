/// @description Insert description here
// You can write your code in this editor

part_emitter_destroy_all(fire_on_card);

if skip_target_1 = false {
	fireball = layer_sequence_create("effect_layer",x,y,seq_flame_spiral);
	scr_sequence_target(fireball,target_1,opp,card_state);
} else {
	seq_no_target = layer_sequence_create("effect_layer",x,y,seq_no_targets);
}

alarm[3] = 100;