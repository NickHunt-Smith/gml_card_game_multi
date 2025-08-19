// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sequence_target(seq,target,opp,card_state,target_element = false){
	if target = card_state {
		layer_sequence_angle(seq,0);
		layer_sequence_xscale(seq,0.001);
		layer_sequence_yscale(seq,0.001);
	} else {
	
		if card_state.is_locale = true {
			source_x = card_state.x + 112;
			source_y = card_state.y + 184;
		} else {
			source_x = card_state.x;
			source_y = card_state.y;
		}
		
		if target.is_locale = true {
			if target_element = true {
				target_x = target.x + 20;
				target_y = target.y + 331;
			} else {
				target_x = target.x + 112;
				target_y = target.y + 184;
			}
		} else {
			target_x = target.x;
			target_y = target.y;
		}
	
		var angle_to_target = -arctan((target_x - source_x)/(source_y - target_y))*57.23;
	
		if source_y < target_y {
			angle_to_target += 180;
		}
		var distance_to_target = sqrt(sqr(target_x - source_x) + sqr(source_y - target_y));
	
		layer_sequence_angle(seq,angle_to_target);
		layer_sequence_xscale(seq,distance_to_target/604.44);
		layer_sequence_yscale(seq,distance_to_target/604.44);
	}

	//if (abs(angle_to_target) < 20) {
	//	angle_to_target -= 2;
	//	layer_sequence_xscale(seq,0.95);
	//	layer_sequence_yscale(seq,0.95);
	//} else if angle_to_target > 20 && angle_to_target < 40 {
	//	angle_to_target -= 3;
	//	layer_sequence_xscale(seq,1.06);
	//	layer_sequence_yscale(seq,1.06);
	//}
	//else if (angle_to_target < -20) && (angle_to_target > -40) {
	//	angle_to_target -= 2;
	//	layer_sequence_xscale(seq,1.05);
	//	layer_sequence_yscale(seq,1.05);
	//}
	//else if (angle_to_target > 40) && (angle_to_target < 50) {
	//	angle_to_target -= 3;
	//	layer_sequence_xscale(seq,1.3);
	//	layer_sequence_yscale(seq,1.3);
	//} else if (angle_to_target < -40) && (angle_to_target > -50) {
	//	angle_to_target -= 2;
	//	layer_sequence_xscale(seq,1.3);
	//	layer_sequence_yscale(seq,1.3);
	//} else if (angle_to_target > 50) && (angle_to_target < 80) {
	//	angle_to_target -= 3;
	//	layer_sequence_xscale(seq,1.6);
	//	layer_sequence_yscale(seq,1.6);
	//} else if (angle_to_target < -50) && (angle_to_target > -80) {
	//	angle_to_target -= 2;
	//	layer_sequence_xscale(seq,1.6);
	//	layer_sequence_yscale(seq,1.6);
	//} else if angle_to_target > 80 {
	//	angle_to_target -= 5;
	//	if abs(target.x - x) > 700 {
	//		layer_sequence_xscale(seq,abs(target.x - x)/700);
	//		layer_sequence_yscale(seq,abs(target.x - x)/700);
	//	} else if abs(target.x - x) < 400 {
	//		layer_sequence_xscale(seq,abs(target.x - x)/820);
	//		layer_sequence_yscale(seq,abs(target.x - x)/820);
	//	} else {
	//		layer_sequence_xscale(seq,abs(target.x - x)/745);
	//		layer_sequence_yscale(seq,abs(target.x - x)/745);
	//	}
	//} else if angle_to_target < -80 {
	//	angle_to_target -= 1;
	//	if abs(target.x - x) > 500 {
	//		layer_sequence_xscale(seq,abs(target.x - x)/515);
	//		layer_sequence_yscale(seq,abs(target.x - x)/515);
	//	} else if abs(target.x - x) < 300 {
	//		layer_sequence_xscale(seq,abs(target.x - x)/320);
	//		layer_sequence_yscale(seq,abs(target.x - x)/320);
	//	} else {
	//		layer_sequence_xscale(seq,abs(target.x - x)/475);
	//		layer_sequence_yscale(seq,abs(target.x - x)/475);
	//	}
	//}

	//if opp = true {
	//	if angle_to_target > -50 or angle_to_target < 50 {
	//		layer_sequence_y(seq,layer_sequence_get_y(seq) - 50);
	//	}
	//	angle_to_target = angle_to_target + 180;
	//}
	
	//if card_type = 1 {
	//	if abs(target.x - x) < 260 {
	//		layer_sequence_xscale(seq,0.5);
	//		layer_sequence_yscale(seq,0.5);
	//	} else {
	//		layer_sequence_xscale(seq,0.8);
	//		layer_sequence_yscale(seq,0.8);
	//	}
	//}
	
	//if (target.y > y) && (opp = false) {
	//	angle_to_target = angle_to_target + 180;
	//}
	//layer_sequence_angle(seq,angle_to_target)
}