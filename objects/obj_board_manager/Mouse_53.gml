
// left wood 
if mouse_x > 826 && mouse_x < 997 && ((mouse_y > 0 && mouse_y < 660) or (mouse_y > 840 && mouse_y < 1570)) {
	var wood_click = layer_sequence_create("Board",mouse_x,mouse_y,seq_wood_click);
	array_push(wood_clicks,wood_click);
}

// right wood 
if mouse_x > 2049 && mouse_x < 2222 && ((mouse_y > 0 && mouse_y < 660) or (mouse_y > 840 && mouse_y < 1570)) {
	var wood_click = layer_sequence_create("Board",mouse_x,mouse_y,seq_wood_click);
	array_push(wood_clicks,wood_click);
}