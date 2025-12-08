
draw_sprite_ext(sprite_index,0,x,y,0.4,0.4,0,c_white,1);
//draw_sprite_general(art,0,60,67,330,443,x-165*0.4,y-218*0.4,0.4,0.4,0,c_white,c_white,c_white,c_white,1)
draw_sprite_ext(art,0,x,y,0.123,0.123,0,c_white,1);
draw_sprite_ext(s_encounter_frame_frame,0,x,y,0.37,0.43,0,c_white,1);
draw_sprite_ext(s_common_centred,0,x,y-140,0.13,0.13,0,c_white,1);

draw_set_font(Empower_font);
draw_text_transformed(x,y-110,encounter_title,0.4,0.4,0);