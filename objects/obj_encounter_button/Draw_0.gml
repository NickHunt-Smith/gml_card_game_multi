var resize_scale = view_wport[1]/1280;

if global.story_active = true {
	draw_sprite_ext(sprite_index,0,x,y,0.08*resize_scale,0.08*resize_scale,0,c_white,1);
} else {
	draw_sprite_ext(sprite_index,0,x,y,0.05*resize_scale,0.05*resize_scale,0,c_white,1);
}