/// @description Insert description here
// You can write your code in this editor

if skip_target_1 = false {
	spark = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_amphramute);
	var target_x = target_1.x+112;
	var target_y = target_1.y+184+130;
	var source_x = card_state.x;
	var source_y = card_state.y;
	var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(spark,angle_to_target);
	layer_sequence_xscale(spark,distance_to_target/604.44);
	layer_sequence_yscale(spark,distance_to_target/604.44);
	alarm[3] = 72;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}

