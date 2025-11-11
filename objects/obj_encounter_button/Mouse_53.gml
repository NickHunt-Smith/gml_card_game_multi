if mouse_x > x-32 && mouse_x < x+32 && mouse_y > y-18 && mouse_y < y+18 {
	room_goto(PvP);
	global.enemy = "Corrick"
}