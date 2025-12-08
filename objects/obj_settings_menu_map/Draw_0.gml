
draw_sprite_ext(s_spell_background,0,x,y,30,30,0,c_black,0.7);

var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;
x = c_x + 0.5*view_wport[1];
y = c_y+0.5*view_hport[1];

draw_sprite_ext(sprite_index,0,x,y,0.4*resize_scale,0.4*resize_scale,0,c_white,1);

draw_set_font(viking_font_doubled);
draw_set_colour(c_black);
draw_text_ext_transformed(x,y-245*resize_scale,"Settings",0,1000,resize_scale,resize_scale,0);