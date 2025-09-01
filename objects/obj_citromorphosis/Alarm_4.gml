/// @description Insert description here
// You can write your code in this editor

if opp = false {
	void_seq_1 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_void);
	var source_x = card_state.x;
	var source_y = card_state.y;
	var target_x = 1254;
	var target_y = 100;
	var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(void_seq_1,angle_to_target);
	layer_sequence_xscale(void_seq_1,distance_to_target/604.44);
	layer_sequence_yscale(void_seq_1,distance_to_target/604.44);
	
	void_seq_2 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_void);
	source_x = card_state.x;
	source_y = card_state.y;
	target_x = 1784;
	target_y = 100;
	angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(void_seq_2,angle_to_target);
	layer_sequence_xscale(void_seq_2,distance_to_target/604.44);
	layer_sequence_yscale(void_seq_2,distance_to_target/604.44);
} else {
	void_seq_1 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_void);
	var source_x = card_state.x;
	var source_y = card_state.y;
	var target_x = 1254;
	var target_y = 1400;
	var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(void_seq_1,angle_to_target);
	layer_sequence_xscale(void_seq_1,distance_to_target/604.44);
	layer_sequence_yscale(void_seq_1,distance_to_target/604.44);
	
	void_seq_2 = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_void);
	source_x = card_state.x;
	source_y = card_state.y;
	target_x = 1784;
	target_y = 1400;
	angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	if source_y < target_y {
		angle_to_target += 180;
	}
	distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	layer_sequence_angle(void_seq_2,angle_to_target);
	layer_sequence_xscale(void_seq_2,distance_to_target/604.44);
	layer_sequence_yscale(void_seq_2,distance_to_target/604.44);
}

alarm[3] = 80;