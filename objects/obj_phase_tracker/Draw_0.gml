draw_set_font(Empower_font)
if global.phase = "scry" {
	draw_text_ext_transformed_colour(x,y,"SCRY",0,100,0.7,0.7,0,c_aqua,c_aqua,c_aqua,c_aqua,1);
} else {
	draw_text_ext_transformed_colour(x,y,"SCRY",0,100,0.7,0.7,0,c_gray,c_gray,c_gray,c_gray,0.7);
}

if global.phase = "action" {
	draw_text_ext_transformed_colour(x+phase_separation,y,"ACTION",0,100,0.7,0.7,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
} else {
	draw_text_ext_transformed_colour(x+phase_separation,y,"ACTION",0,100,0.7,0.7,0,c_gray,c_gray,c_gray,c_gray,0.7);
}

if global.phase = "combat" {
	draw_text_ext_transformed_colour(x+2*phase_separation+30,y,"COMBAT",0,100,0.7,0.7,0,c_red,c_red,c_red,c_red,1);
} else {
	draw_text_ext_transformed_colour(x+2*phase_separation+30,y,"COMBAT",0,100,0.7,0.7,0,c_gray,c_gray,c_gray,c_gray,0.7);
}

if global.phase = "end" {
	draw_text_ext_transformed_colour(x+3*phase_separation+30,y,"END",0,100,0.7,0.7,0,c_lime,c_lime,c_lime,c_lime,1);
} else {
	draw_text_ext_transformed_colour(x+3*phase_separation+30,y,"END",0,100,0.7,0.7,0,c_gray,c_gray,c_gray,c_gray,0.7);
}