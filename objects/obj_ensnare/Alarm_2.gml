/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	clash = layer_sequence_create("effect_layer",player_strongest_locale.x+112,player_strongest_locale.y+184,seq_dominate_friendly);
	alarm[3] = 35;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}
 