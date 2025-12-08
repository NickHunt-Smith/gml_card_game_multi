if portal_active = true {
	radius_1 = clamp(radius_1 + 14.8,0,max_radius);
}
background_angle += 0.05;
if background_angle > 360 {
	background_angle -= 360;
}
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