surface = -1;
radius_1 = 1733;
board_scale = 2.9;
background_angle = global.background_angle;
max_radius = 3000;
x_surface = camera_get_view_x(view_camera[0]);
y_surface = camera_get_view_y(view_camera[0]);
portal_x = 0.5*view_wport[0];
portal_y = 0.5*view_hport[0];
waiting_for_load = false;
portal_seq_1 = noone;
portal_active = false;

alarm[2] = 100;