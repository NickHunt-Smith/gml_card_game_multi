

if mouse_x > x && mouse_x < x + 2*0.3*sprite_width && mouse_y > y + 2*0.3*0.5*sprite_height - 2*30*0.3 && mouse_y < y + 2*0.3*0.5*sprite_height + 2*30*0.3 {
	volume_percent = (mouse_x - x)/(2*0.3*sprite_width);
}