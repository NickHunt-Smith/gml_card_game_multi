alarm[0] = 540;
draw_black = false;
depth = layer_get_depth("background_image");

title_reveal_sys = part_system_create(Ps_title_reveal);
part_system_position(title_reveal_sys, 0.5*view_wport[0], 0.5*view_hport[0]);
part_system_depth(title_reveal_sys,layer_get_depth("settings"));