/// @description Insert description here
// You can write your code in this editor

if opp = true {
	consume_seq_1 = layer_sequence_create("effect_layer",1254,100,seq_consume);
	var target_x = card_state.x+112;
	var target_y = card_state.y+184;
	var source_x = 1254;
	var source_y = 100;
	var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(consume_seq_1,angle_to_target);
	layer_sequence_xscale(consume_seq_1,distance_to_target/604.44);
	layer_sequence_yscale(consume_seq_1,distance_to_target/604.44);
	
	consume_seq_2 = layer_sequence_create("effect_layer",1784,100,seq_consume);
	target_x = card_state.x+112;
	target_y = card_state.y+184;
	source_x = 1784;
	source_y = 100;
	angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(consume_seq_2,angle_to_target);
	layer_sequence_xscale(consume_seq_2,distance_to_target/604.44);
	layer_sequence_yscale(consume_seq_2,distance_to_target/604.44);
} else {
	consume_seq_1 = layer_sequence_create("effect_layer",1254,1400,seq_consume);
	var target_x = card_state.x+112;
	var target_y = card_state.y+184;
	var source_x = 1254;
	var source_y = 1400;
	var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(consume_seq_1,angle_to_target);
	layer_sequence_xscale(consume_seq_1,distance_to_target/604.44);
	layer_sequence_yscale(consume_seq_1,distance_to_target/604.44);
	
	consume_seq_2 = layer_sequence_create("effect_layer",1784,1400,seq_consume);
	target_x = card_state.x+112;
	target_y = card_state.y+184;
	source_x = 1784;
	source_y = 1400;
	angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(consume_seq_2,angle_to_target);
	layer_sequence_xscale(consume_seq_2,distance_to_target/604.44);
	layer_sequence_yscale(consume_seq_2,distance_to_target/604.44);
}

alarm[2] = 70;