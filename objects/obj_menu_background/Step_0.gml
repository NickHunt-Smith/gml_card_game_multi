
for (var _j = 0; _j < array_length(cards); _j++) {
	if cards[_j].image_xscale > 2 {
		instance_destroy(cards[_j]);
		array_delete(cards,_j,1);
		break
	}
}