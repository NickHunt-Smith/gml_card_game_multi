
if portal_done_1 = true {
	draw_sprite_ext(s_ruby_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_2 = true {
	draw_sprite_ext(s_pearl_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_3 = true {
	draw_sprite_ext(s_onyx_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_4 = true {
	draw_sprite_ext(s_sapphire_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_5 = true {
	draw_sprite_ext(s_emerald_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_6 = true {
	draw_sprite_ext(s_citrine_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_7 = true {
	draw_sprite_ext(s_opal_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
} else if portal_done_8 = true {
	draw_sprite_ext(s_amethyst_board,0,x_surface+portal_x,y_surface+portal_y,board_scale,board_scale,0,c_white,1);
}

if portal_seq_1 != noone or (max_channel_ind = 0 && tied = false && portal_done_1 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_4 = noone && portal_seq_3 = noone && portal_seq_2 = noone) {
	if portal_in_progress = false {
		portal_seq_1 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_ruby);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_1 = clamp(radius_1 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_1, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_ruby_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();
	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_2 != noone or (max_channel_ind = 1 && tied = false && portal_done_2 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_4 = noone && portal_seq_3 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_2 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_pearl);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_2 = clamp(radius_2 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_2, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_pearl_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_3 != noone or (max_channel_ind = 2 && tied = false && portal_done_3 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_4 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_3 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_onyx);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_3 = clamp(radius_3 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_3, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_onyx_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_4 != noone or (max_channel_ind = 3 && tied = false && portal_done_4 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_3 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_4 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_sapphire);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_4 = clamp(radius_4 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_4, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_sapphire_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_5 != noone or (max_channel_ind = 4 && tied = false && portal_done_5 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_4 = noone && portal_seq_3 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_5 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_emerald);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_5 = clamp(radius_5 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_5, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_emerald_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_6 != noone or (max_channel_ind = 5 && tied = false && portal_done_6 = false && portal_seq_8 = noone && portal_seq_7 = noone && portal_seq_4 = noone && portal_seq_5 = noone && portal_seq_3 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_6 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_citrine);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_6 = clamp(radius_6 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_6, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_citrine_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_7 != noone or (max_channel_ind = 6 && tied = false && portal_done_7 = false && portal_seq_8 = noone && portal_seq_4 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_3 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_7 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_opal);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_7 = clamp(radius_7 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_7, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_opal_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

if portal_seq_8 != noone or (max_channel_ind = 7 && tied = false && portal_done_8 = false && portal_seq_4 = noone && portal_seq_7 = noone && portal_seq_6 = noone && portal_seq_5 = noone && portal_seq_3 = noone && portal_seq_2 = noone && portal_seq_1 = noone) {
	if portal_in_progress = false {
		portal_seq_8 = layer_sequence_create("Background_stars",x_surface + portal_x, y_surface + portal_y,seq_portal_amethyst);
		portal_in_progress = true;
		alarm[0] = 900;
	}
	
	radius_8 = clamp(radius_8 + 0.84,0,600);
	if( !surface_exists( surface ) ) {
	    surface = surface_create( portal_x*2, portal_y*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_8, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_amethyst_board,0,portal_x,portal_y,board_scale,board_scale,0,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();

	draw_surface( surface, x_surface, y_surface );

}

//if portal_in_progress = true {
//	if summit_flare != noone {
//		part_system_destroy(summit_flare);
//		summit_flare = noone;
//	}

//	if volcano_smoke != noone {
//		part_system_destroy(volcano_smoke);
//		volcano_smoke = noone;
//	}

//	if volcano_erupt != noone {
//		part_system_destroy(volcano_erupt);
//		volcano_erupt = noone;
//	}
	
//	if shield_seq != noone {
//		layer_sequence_destroy(shield_seq);
//		shield_seq = noone;
//	}
	
//	if ice_click != noone {
//		layer_sequence_destroy(ice_click);
//		ice_click = noone;
//	}
	
//	if rock_click != noone {
//		layer_sequence_destroy(rock_click);
//		rock_click = noone;
//	}
	
//	if outpost_bubble != noone {
//		layer_sequence_destroy(outpost_bubble);
//		outpost_bubble = noone;
//	}
//}