if portrait_land_1 != noone {
	layer_sequence_destroy(portrait_land_1);
	portrait_land_1 = noone;
}

if portrait_land_2 != noone {
	layer_sequence_destroy(portrait_land_2);
	portrait_land_2 = noone;
}

player_portrait.depth = layer_get_depth("On_Board");
enemy_portrait.depth = layer_get_depth("On_Board");
instance_destroy();