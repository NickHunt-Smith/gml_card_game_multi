/// @description Insert description here
// You can write your code in this editor

if alpha_increasing = true && image_alpha < 1 {
	image_alpha += 0.01;
}

draw_set_color(textColor)
draw_set_font(Empower_font_story_character)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_self();

// Draw the text (forground)
draw_text_colour(x,y, text,textColor,textColor,textColor,textColor,image_alpha);
