var c_x = camera_get_view_x(view_camera[1]);
var c_y = camera_get_view_y(view_camera[1]); 
var resize_scale = view_wport[1]/1280;
x = c_x + 0.5*view_wport[1];
y = c_y+0.5*view_hport[1]+205*resize_scale;

draw_sprite_ext(sprite_index,0,x,y,0.2*resize_scale,0.2*resize_scale,0,c_white,1);

draw_set_font(viking_font_doubled);
draw_set_colour(c_white);
draw_text_ext_transformed(x,y-15*resize_scale,"Exit Game",0,1000,0.5*resize_scale,0.5*resize_scale,0);