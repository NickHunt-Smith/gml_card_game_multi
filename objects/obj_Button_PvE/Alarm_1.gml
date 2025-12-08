
if texture_is_ready("Default") = true {
	global.background_angle = background_angle;
	room_goto(PvP);
} else {
	alarm[1] = 1;
}