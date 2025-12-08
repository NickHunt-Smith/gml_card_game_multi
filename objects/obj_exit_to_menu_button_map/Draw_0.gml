var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;
x = c_x + 0.5*view_wport[1];
y = c_y+0.5*view_hport[1]+115*resize_scale;

draw_sprite_ext(sprite_index,0,x,y,0.2*resize_scale,0.2*resize_scale,0,c_white,1);

draw_set_font(viking_font_doubled);
draw_set_colour(c_white);
draw_text_ext_transformed(x,y-15*resize_scale,"Main Menu",0,1000,0.5*resize_scale,0.5*resize_scale,0);

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
}