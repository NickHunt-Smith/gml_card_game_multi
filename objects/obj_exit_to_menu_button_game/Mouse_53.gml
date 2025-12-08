
if mouse_x > x-2*100 && mouse_x < x+2*100 && mouse_y > y-2*34 && mouse_y < y+2*34 {
	if waiting_for_load = false {
		waiting_for_load = true;
		depth = layer_get_depth("transition");
		portal_seq_1 = layer_sequence_create("transition",x_surface + portal_x, y_surface + portal_y,seq_portal);
		layer_sequence_xscale(portal_seq_1,0.5);
		layer_sequence_yscale(portal_seq_1,0.5);
		alarm[0] = 100;
	}
}