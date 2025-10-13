/// @description Insert description here
// You can write your code in this editor

reroll_laser = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_reroll);
var target_x = 2136;
var target_y = 756;
var source_x = card_state.x;
var source_y = card_state.y;
var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
if source_y < target_y {
	angle_to_target += 180;
}
var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
layer_sequence_angle(reroll_laser,angle_to_target);
layer_sequence_xscale(reroll_laser,distance_to_target/604.44);
layer_sequence_yscale(reroll_laser,distance_to_target/604.44);

alarm[3] = 90;