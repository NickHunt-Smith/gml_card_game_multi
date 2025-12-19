if title_reveal_sys != noone {
	part_system_destroy(title_reveal_sys);
	title_reveal_sys = noone;
	
	if title_seq = noone {
		title_seq = layer_sequence_create("background_image",0.5*view_wport[0],0.5*view_hport[0],seq_title);
		alarm[1] = 350;
	}
}

if title_sys = noone {
	title_sys = part_system_create(Ps_title);
	part_system_position(title_sys, 0.5*view_wport[0], 0.5*view_hport[0]);
	part_system_depth(title_sys,layer_get_depth("buttons"));
}

if title_seq = noone && title_seq_done = false {
	title_seq = layer_sequence_create("background_image",0.5*view_wport[0],0.5*view_hport[0],seq_title);
	alarm[1] = 350;
}

//var random_angle = random(360);
//var accept_angle = true;
//if array_length(cards) > 0 {
//	for (var _i = 0; _i < 4; _i++) {
//		random_angle = random(360);
//		for (var _j = 0; _j < array_length(cards); _j++) {
//			if abs(cards[_j].image_angle - random_angle) < 45 {
//				accept_angle = false;
//				break
//			}
//		}
//		if accept_angle = true {
//			break
//		}
//	}
//}

//if accept_angle = true {
//	var card = instance_create_layer(0.5*view_wport[0],0.5*view_hport[0],"on_background",obj_card_menu);
//	card.image_angle = random(360);
//	array_push(cards,card);
//}

//alarm[0] = random(60)+1;

var card = instance_create_layer(0.5*view_wport[0],0.5*view_hport[0],"on_background",obj_card_menu);
card.image_angle = random(360);
array_push(cards,card);

alarm[0] = 100;