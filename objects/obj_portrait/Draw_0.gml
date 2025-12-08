alpha = clamp(alpha + 0.05,0,1);
draw_sprite_ext(sprite_index,0,x,y,big_scale_frame,big_scale_frame,0,c_white,alpha);

if player_portrait = true {
	draw_sprite_ext(global.player_art,0,x,y,big_scale_art,big_scale_art,0,c_white,alpha);
} else {
	draw_sprite_ext(global.enemy_art,0,x,y,big_scale_art,big_scale_art,0,c_white,alpha);
}