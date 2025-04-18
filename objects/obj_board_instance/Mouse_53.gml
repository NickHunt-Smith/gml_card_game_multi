
////////////////////////////////////////////////////////////////////////
// Ruby board

if portal_done_1 = true {
	// Summit
	var click_summit = false;
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
					click_summit = true;
				}
			}
		}
	}

	if click_summit = true && rock_click = noone {
		summit_clicks += 1;
		rock_click = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_rock_click);
		alarm[1] = 10;
	}

	if summit_clicks = 3 && summit_emitter = false {
		summit_flare = part_system_create(Ps_ruby_board_flare);
		part_system_position(summit_flare,x_surface + 238,y_surface + 125);
		part_system_depth(summit_flare,layer_get_depth("background_stars"));
		summit_emitter = true;
		alarm[2] = 1000;
	}

	// Volcano
	var click_volcano = false;
	x_left = 256;
	y_left = 432;
	x_up = 465;
	y_up = 310;
	x_right = 627;
	y_right = 400;
	x_down = 351;
	y_down = 511;

	m = (y_down - y_left)/(x_down - x_left);
	c = y_down-(m*x_down);
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
					click_volcano = true;
				}
			}
		}
	}

	if click_volcano = true && rock_click = noone {
		volcano_clicks += 1;
		rock_click = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_rock_click);
		alarm[1] = 10;
	}

	if volcano_clicks = 3 && volcano_smoke = noone {
		volcano_smoke = part_system_create(Ps_ruby_board_smoke);
		part_system_position(volcano_smoke,x_surface + 470,y_surface + 320);
		part_system_depth(volcano_smoke,layer_get_depth("background_stars"));
		screenshake(40, 2, 0.8);
	}

	if volcano_clicks = 6 && volcano_erupt = noone {
		if volcano_smoke != noone {
			part_emitter_destroy_all(volcano_smoke);
		}
		volcano_erupt = part_system_create(Ps_ruby_board_erupt);
		part_system_position(volcano_erupt,x_surface + 470,y_surface + 320);
		part_system_depth(volcano_erupt,layer_get_depth("background_stars"));
	
		screenshake(30, 3, 0.8);
	}
	
	x_right = 820;
	y_right = 382;
	x_left = 0;
	y_left = 237;
	m = (y_right - y_left)/(x_right - x_left);
	c = y_right-(m*x_right);
	if rock_click = noone && click_volcano = false && click_summit = false && mouse_x > x_surface && mouse_x < x_surface + 820 && mouse_y-y_surface > m*(mouse_x - x_surface) + c && mouse_y < y_surface + 750 {
		rock_click = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_rock_click);
		alarm[1] = 10;
	}
}

///////////////////////////////////////////////////
// Pearl board

if portal_done_2 = true {
	// City
	var click_city = false;
	var x_left = 215;
	var y_left = 401;
	var x_up = 373;
	var y_up = 362;
	var x_right = 408;
	var y_right = 716;
	var x_down = 201;
	var y_down = 718;
	
	var m = (y_down - y_left)/(x_down - x_left);
	var c = y_down-(m*x_down);
	if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
		m = (y_up - y_left)/(x_up - x_left);
		c = y_up-(m*x_up);
		if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
			m = (y_up - y_right)/(x_up - x_right);
			c = y_up-(m*x_up);
			if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
				m = (y_down - y_right)/(x_down - x_right);
				c = y_down-(m*x_down);
				if mouse_y - y_surface < m*(mouse_x - x_surface) + c {
					click_city = true;
				}
			}
		}
	}
	
	if click_city = true {
		var blueflame = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_blueflame_click);
		layer_sequence_yscale(blueflame,0.3);
		layer_sequence_xscale(blueflame,0.3);
		array_push(blueflames,blueflame);
	}
	
	var click_outpost = false
	x_left = 785;
	y_left = 71;
	x_up = 820;
	y_up = 70;
	x_right = 821;
	y_right = 253;
	x_down = 747;
	y_down = 268;
	
	m = (y_down - y_left)/(x_down - x_left);
	c = y_down-(m*x_down);
	if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
		m = (y_up - y_left)/(x_up - x_left);
		c = y_up-(m*x_up);
		if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
			m = (y_up - y_right)/(x_up - x_right);
			c = y_up-(m*x_up);
			if mouse_y - y_surface > m*(mouse_x - x_surface) + c {
				m = (y_down - y_right)/(x_down - x_right);
				c = y_down-(m*x_down);
				if mouse_y - y_surface < m*(mouse_x - x_surface) + c {
					click_outpost = true;
				}
			}
		}
	}
	
	if click_outpost = true {
		outpost_clicks += 1;
		if outpost_clicks = 3 && outpost_bubble = noone {
			outpost_bubble = layer_sequence_create("Background_stars",x_surface + 781,y_surface + 198,seq_outpost);
			alarm[3] = 3000;
		}
	}
	
	var click_shield = false;
	x_left = 419;
	y_left = 750;
	x_up = 463;
	y_up = 676;
	x_right = 533;
	y_right = 720;
	x_down = 506;
	y_down = 751;

	m = (y_down - y_left)/(x_down - x_left);
	c = y_down-(m*x_down);
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
					click_shield = true;
				}
			}
		}
	}
	
	if click_shield = true && shield_seq = noone {
		shield_seq = layer_sequence_create("background_stars",x_surface + 465,y_surface + 757,seq_shield_click);
		//layer_sequence_yscale(blueflame,0.3);
		//layer_sequence_xscale(blueflame,0.3);
		alarm[4] = 60;
	}
	
	x_right = 820;
	y_right = 67;
	x_left = 0;
	y_left = 172;
	m = (y_right - y_left)/(x_right - x_left);
	c = y_right-(m*x_right);
	if ice_click = noone && click_shield = false && click_city = false && mouse_x > x_surface && mouse_x < x_surface + 820 && mouse_y-y_surface > m*(mouse_x - x_surface) + c && mouse_y < y_surface + 750 {
		ice_click = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_ice_click);
		alarm[5] = 10;
	}
	
}

///////////////////////////////////////////////////
// Onyx board


if portal_done_3 = true {
	
	var click_left = false;
	var x_left = 49;
	var y_left = 140;
	var x_up = 137;
	var y_up = 10;
	var x_right = 234;
	var y_right = 140;
	var y_down = 375;
	
	var m_1 = (y_up - y_left)/(x_up - x_left);
	var c_1 = y_up-(m_1*x_up);
	var m_2 = (y_up - y_right)/(x_up - x_right);
	var c_2 = y_up-(m_2*x_up);
	if (mouse_y - y_surface > m_1*(mouse_x - x_surface) + c_1 && mouse_x - x_surface > x_left && mouse_x - x_surface < x_up && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up) or (mouse_y - y_surface > m_2*(mouse_x - x_surface) + c_2 && mouse_x - x_surface > x_up && mouse_x - x_surface < x_right && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up){
		var onyx_left = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_onyx_left);
		array_push(onyx_lefts,onyx_left);
		click_left = true;
	}
	
	var click_middle = false;
	x_left = 316;
	y_left = 140;
	x_up = 416;
	y_up = 10;
	x_right = 515;
	y_right = 140;
	y_down = 375;
	
	m_1 = (y_up - y_left)/(x_up - x_left);
	c_1 = y_up-(m_1*x_up);
	m_2 = (y_up - y_right)/(x_up - x_right);
	c_2 = y_up-(m_2*x_up);
	if (mouse_y - y_surface > m_1*(mouse_x - x_surface) + c_1 && mouse_x - x_surface > x_left && mouse_x - x_surface < x_up && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up) or (mouse_y - y_surface > m_2*(mouse_x - x_surface) + c_2 && mouse_x - x_surface > x_up && mouse_x - x_surface < x_right && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up){
		var onyx_middle = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_onyx_middle);
		array_push(onyx_middles,onyx_middle);
		click_middle = true;
	}
	
	var click_right = false;
	x_left = 583;
	y_left = 140;
	x_up = 686;
	y_up = 10;
	x_right = 788;
	y_right = 140;
	y_down = 375;
	
	m_1 = (y_up - y_left)/(x_up - x_left);
	c_1 = y_up-(m_1*x_up);
	m_2 = (y_up - y_right)/(x_up - x_right);
	c_2 = y_up-(m_2*x_up);
	if (mouse_y - y_surface > m_1*(mouse_x - x_surface) + c_1 && mouse_x - x_surface > x_left && mouse_x - x_surface < x_up && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up) or (mouse_y - y_surface > m_2*(mouse_x - x_surface) + c_2 && mouse_x - x_surface > x_up && mouse_x - x_surface < x_right && mouse_y - y_surface < y_down && mouse_y - y_surface > y_up){
		var onyx_right = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_onyx_right);
		array_push(onyx_rights,onyx_right);
		click_right = true;
	}
	
	if mouse_x > x_surface && mouse_x < x_surface + 820 && mouse_y > y_surface && mouse_y < y_surface + 750 && click_left = false && click_middle = false && click_right = false {
		var onyx_click = layer_sequence_create("background_stars",mouse_x,mouse_y,seq_click_onyx);
		array_push(onyx_clicks,onyx_click);
	}
}
