
// Left player
var max_channel = 0;
var max_channel_ind = 0;
var tied = false;
if position = "left_player" {
	for (var _i = 0; _i < array_length(global.channelled_left_player); _i++) {
		if global.channelled_left_player[_i] = max_channel {
			tied = true;
		}
		if global.channelled_left_player[_i] > max_channel {
			max_channel = global.channelled_left_player[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "right_player" {
	for (var _i = 0; _i < array_length(global.channelled_right_player); _i++) {
		if global.channelled_right_player[_i] = max_channel {
			tied = true;
		}
		if global.channelled_right_player[_i] > max_channel {
			max_channel = global.channelled_right_player[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "left_opp" {
	for (var _i = 0; _i < array_length(global.channelled_left_opp); _i++) {
		if global.channelled_left_opp[_i] = max_channel {
			tied = true;
		}
		if global.channelled_left_opp[_i] > max_channel {
			max_channel = global.channelled_left_opp[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
} else if position = "right_opp" {
	for (var _i = 0; _i < array_length(global.channelled_right_opp); _i++) {
		if global.channelled_right_opp[_i] = max_channel {
			tied = true;
		}
		if global.channelled_right_opp[_i] > max_channel {
			max_channel = global.channelled_right_opp[_i];
			max_channel_ind = _i;
			tied = false;
		}
	}
}

if portal_done_1 = true {
	draw_sprite_ext(s_ruby_board,0,x_surface+portal_x,y_surface+375,1.02,1.02,0,c_white,1);
} else if portal_done_2 = true {
	draw_sprite_ext(s_pearl_board,0,x_surface+portal_x,y_surface+375,1.02,1.02,0,c_white,1);
} else if portal_done_3 = true {
	draw_sprite_ext(s_onyx_board,0,x_surface+portal_x,y_surface+375,1.02,1.02,0,c_white,1);
}

if portal_seq_1 != noone or (max_channel_ind = 0 && tied = false && portal_done_1 = false && portal_seq_2 = noone && portal_seq_3 = noone) {
	if portal_in_progress = false {
		portal_seq_1 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_ruby);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_1 = clamp(radius_1 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( 820*1.02, 750*1.02 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( 410, 375, radius_1, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_ruby_board,0,410,375,1.02,1.02,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();
	show_debug_message(x_surface)
	show_debug_message(y_surface)
	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_2 != noone or (max_channel_ind = 1 && tied = false && portal_done_2 = false && portal_seq_1 = noone && portal_seq_3 = noone) {
	if portal_in_progress = false {
		portal_seq_2 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_pearl);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_2 = clamp(radius_2 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( 820*1.02, 750*1.02 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( 410, 375, radius_2, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_pearl_board,0,410,375,1.02,1.02,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_3 != noone or (max_channel_ind = 2 && tied = false && portal_done_3 = false && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_3 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_onyx);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_3 = clamp(radius_3 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( 820*1.02, 750*1.02 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( 410, 375, radius_3, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_onyx_board,0,410,375,1.02,1.02,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_in_progress = true {
	if summit_flare != noone {
		part_system_destroy(summit_flare);
		summit_flare = noone;
	}

	if volcano_smoke != noone {
		part_system_destroy(volcano_smoke);
		volcano_smoke = noone;
	}

	if volcano_erupt != noone {
		part_system_destroy(volcano_erupt);
		volcano_erupt = noone;
	}
	
	if shield_seq != noone {
		layer_sequence_destroy(shield_seq);
		shield_seq = noone;
	}
	
	if ice_click != noone {
		layer_sequence_destroy(ice_click);
		ice_click = noone;
	}
	
	if rock_click != noone {
		layer_sequence_destroy(rock_click);
		rock_click = noone;
	}
	
	if outpost_bubble != noone {
		layer_sequence_destroy(outpost_bubble);
		outpost_bubble = noone;
	}
}