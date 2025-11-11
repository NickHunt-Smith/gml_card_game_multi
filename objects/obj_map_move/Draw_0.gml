var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;

if left = true {
	if c_x != 0 {
		draw_sprite_ext(sprite_index,0,c_x,c_y + 0.5*view_hport[1],0.7*resize_scale,0.7*resize_scale,90,arrow_color,1);
	}
} else if up = true {
	if c_y != 0 {
		draw_sprite_ext(sprite_index,0,c_x + 0.5*view_wport[1],c_y,0.7*resize_scale,0.7*resize_scale,0,arrow_color,1);
	}
} else if right = true {
	if c_x + view_wport[1] != room_width {
		draw_sprite_ext(sprite_index,0,c_x + view_wport[1],c_y + 0.5*view_hport[1],0.7*resize_scale,0.7*resize_scale,270,arrow_color,1);
	}
} else if down = true { 
	if c_y + view_hport[1] != room_height {
		draw_sprite_ext(sprite_index,0,c_x+ 0.5*view_wport[1],c_y + view_hport[1],0.7*resize_scale,0.7*resize_scale,180,arrow_color,1);
	}
}

