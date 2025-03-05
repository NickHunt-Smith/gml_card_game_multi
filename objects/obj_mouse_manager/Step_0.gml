/// @description Move the grabbed card.

if (grabbed_card != noone)
{
	// As long as we're actually grabbing a card.
	// Set its x and y to the mouse cursor.
	grabbed_card.x = lerp(grabbed_card.x, mouse_x, lerp_amount);
	grabbed_card.y = lerp(grabbed_card.y, mouse_y, lerp_amount);
}

if !(mouse_check_button(mb_left))
{
	/// Reset grabbed card when not holding anything.
	grabbed_card = noone;
}