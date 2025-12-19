var c_x = camera_get_view_x(view_camera[0]);
var c_y = camera_get_view_y(view_camera[0]); 
draw_sprite_ext(sprite_index,0,c_x + 0.95*view_wport[0],c_y + 0.08*view_hport[0],0.15,0.15,0,c_white,image_alpha);

if alpha_increasing = true && image_alpha < 1 {
	image_alpha += 0.01;
}