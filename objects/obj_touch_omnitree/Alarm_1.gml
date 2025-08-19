/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	beam = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_touch_omni);
	scr_sequence_target(beam,target_1,opp,card_state);
	
	glow_on_target = part_system_create(Ps_touch_omni_square);
	part_system_position(glow_on_target, target_1.x + 112, target_1.y + 184);
	part_system_depth(glow_on_target,-1100);
	alarm[2] = 90;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}