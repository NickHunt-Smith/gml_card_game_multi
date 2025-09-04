/// @description Insert description here
// You can write your code in this editor

var only_spell = false;
if array_length(global.spell_stack) = 1 and global.spell_stack[0].order_in_stack = card_state.order_in_stack {
	only_spell = true;
}

if skip_target_1 = false and only_spell = true {
	spark = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_dust_attack);
	scr_sequence_target(spark,target_1,opp,card_state);
	alarm[3] = 60;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 80;
}