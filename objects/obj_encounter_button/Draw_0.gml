if global.story_active = true {
	draw_sprite_ext(sprite_index,0,x,y,0.08,0.08,0,c_white,1);
} else {
	draw_sprite_ext(sprite_index,0,x,y,0.05,0.05,0,c_white,1);
}

if waiting_for_load = true {
	background_angle += 0.05;
	if background_angle > 360 {
		background_angle -= 360;
	}
	radius_1 = clamp(radius_1 + 14.8,0,max_radius);
	if( !surface_exists( surface ) ) {
		surface = surface_create( max_radius*2, max_radius*2 );
	}
	surface_set_target( surface );
	draw_clear_alpha(0, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle( portal_x, portal_y, radius_1, false );
	gpu_set_blendmode_ext( bm_dest_alpha, bm_inv_src_alpha );
	draw_sprite_ext(s_game_transition_background,0,portal_x,portal_y,board_scale,board_scale,background_angle,c_white,1);
	gpu_set_blendmode( bm_normal );
	surface_reset_target();
	draw_surface( surface, x_surface, y_surface );
	
	if player_portrait != noone {
		draw_set_font(viking_font);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed_colour(x_surface + portal_x,y_surface + portal_y,"VS",2,2,0,c_black,c_black,c_black,c_black,player_portrait.alpha);
	}
}