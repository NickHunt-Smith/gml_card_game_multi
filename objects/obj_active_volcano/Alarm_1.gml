/// @description Insert description here
// You can write your code in this editor

if target_1 != card_state {
	fireball = layer_sequence_create("effect_layer",x,y,seq_volcano);
	scr_sequence_target(fireball,target_1,opp,card_state);
	alarm[3] = 165;
} else {
	alarm[3] = 10;
}

