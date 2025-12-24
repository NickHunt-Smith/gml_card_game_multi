global.disable_buttons = true;
waiting_for_load = true;
depth = layer_get_depth("settings");
portal_seq_1 = layer_sequence_create("settings",x_surface + portal_x, y_surface + portal_y,seq_portal);
global.music_controller.music_curr = noone;
alarm[2] = 100;