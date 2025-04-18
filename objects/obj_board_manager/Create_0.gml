board_left_player = instance_create_depth(0,1206-390,layer_get_depth("Background_stars"),obj_board_instance);
board_left_player.x_surface = 0;
board_left_player.y_surface = 1206-390;
board_left_player.position = "left_player";

board_right_player = instance_create_depth(2220,1206-390,layer_get_depth("Background_stars"),obj_board_instance);
board_right_player.x_surface = 2220;
board_right_player.y_surface = 1206-390;
board_right_player.position = "right_player";

board_left_opp = instance_create_depth(0,0,layer_get_depth("Background_stars"),obj_board_instance);
board_left_opp.x_surface = 0;
board_left_opp.y_surface = -70;
board_left_opp.position = "left_opp";

board_right_opp = instance_create_depth(2220,0,layer_get_depth("Background_stars"),obj_board_instance);
board_right_opp.x_surface = 2220;
board_right_opp.y_surface = -70;
board_right_opp.position = "right_opp";

wood_clicks = [];