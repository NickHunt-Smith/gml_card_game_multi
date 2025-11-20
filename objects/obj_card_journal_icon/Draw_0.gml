
var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;

draw_sprite_ext(sprite_index,0,c_x + 0.05*view_wport[1],c_y + 0.08*view_hport[1],0.1*resize_scale,0.1*resize_scale,0,c_white,1);