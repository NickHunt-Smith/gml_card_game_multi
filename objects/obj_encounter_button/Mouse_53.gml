var resize_scale = view_wport[1]/1280;
if mouse_x > x-52*resize_scale && mouse_x < x+52*resize_scale && mouse_y > y-27*resize_scale && mouse_y < y+27*resize_scale {
	
	if encounter_name = "tutorial" {
		global.tutorial = true;
	} else {
		global.tutorial = false;
	}
	global.encounter_level = rarity;
	global.encounter_name = encounter_name;
	room_goto(PvP);
}