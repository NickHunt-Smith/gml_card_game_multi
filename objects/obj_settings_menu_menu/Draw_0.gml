
draw_sprite_ext(s_spell_background,0,x,y,30,30,0,c_black,0.7);

var c_x = camera_get_view_x(view_camera[0]);
var c_y = camera_get_view_y(view_camera[0]); 
x = c_x + 0.5*view_wport[0];
y = c_y+0.5*view_hport[0];

draw_sprite_ext(sprite_index,0,x,y,0.8,0.8,0,c_white,1);

draw_set_font(viking_font_doubled);
draw_set_colour(c_black);
draw_text_ext_transformed(x,y-245*2,"Settings",0,1000,2,2,0);