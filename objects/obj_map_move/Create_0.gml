clamp_amount = 50
left = false
up = false
right = false
down = false
arrow_color = c_white;

if x < 750 {
	left = true;
} else if y < 2630 {
	up = true;
} else if y > 3080 {
	down = true;
} else if x > 1690 {
	right = true;
}