/// @description Insert description here
// You can write your code in this editor
if spell = true {
	draw_sprite_general(tooltip_sprite,0,65,351,316,154,mouse_x,mouse_y,1.5,1.5,0,c_white,c_white,c_white,c_white,1);
} else {
	draw_sprite_general(tooltip_sprite,0,65,305,316,154,mouse_x,mouse_y,1.5,1.5,0,c_white,c_white,c_white,c_white,1);
}

if tooltip_extra = true {
	var tooltip_string = string(tooltip_counter) + " " + tooltip_text;
	if tooltip_text_plural = true && tooltip_counter!=1 {
		tooltip_string += "s";
	}
	draw_set_font(Empower_font);
	draw_sprite_ext(s_effect_box,0,mouse_x+239,mouse_y+220,1.505,0.6,0,c_white,1);
	draw_text_colour(mouse_x+235,mouse_y+270,tooltip_string,c_maroon,c_maroon,c_maroon,c_maroon,1);
}