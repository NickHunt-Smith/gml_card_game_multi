x_surface = camera_get_view_x(view_camera[1]);
y_surface = camera_get_view_y(view_camera[1]);
portal_x = 0.5*view_wport[1];
portal_y = 0.5*view_hport[1];

if portal_seq_1 != noone {
	layer_sequence_x(portal_seq_1,x_surface + portal_x);
	layer_sequence_y(portal_seq_1,y_surface + portal_y);
}