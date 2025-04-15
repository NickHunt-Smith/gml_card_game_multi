
// Summit
var click = false;
var x_left = 126;
var y_left = 323;
var x_up = 240;
var y_up = 161;
var x_right = 407;
var y_right = 350;
var x_down = 256;
var y_down = 426;

var m = (y_down - y_left)/(x_down - x_left);
var c = y_down-(m*x_down);
if mouse_y - y_surface < m*(mouse_x - x_surface) + c {
	m = (y_up - y_left)/(x_up - x_left);
	c = y_up-(m*x_up);
	if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
		m = (y_up - y_right)/(x_up - x_right);
		c = y_up-(m*x_up);
		if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
			m = (y_down - y_right)/(x_down - x_right);
			c = y_down-(m*x_down);
			if mouse_y - y_surface < m*(mouse_x - x_surface) + c {
				click = true;
			}
		}
	}
}

if click = true && rock_click = noone {
	summit_clicks += 1;
	rock_click = layer_sequence_create("effect_layer",mouse_x,mouse_y,seq_rock_click);
	alarm[1] = 10;
}

if summit_clicks = 3 {
	summit_flare = part_system_create(Ps_ruby_board_flare);
	part_system_position(summit_flare,x_surface + 238,y_surface + 125);
	part_system_depth(summit_flare,layer_get_depth("effect_layer"));
	summit_emitter = true;
	alarm[2] = 300;
}
