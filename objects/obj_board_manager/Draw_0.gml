
if global.cheap_mode = false {
	draw_sprite(s_sideboard_border,0,board_left_player.x_surface+board_left_player.portal_x,board_left_player.y_surface+board_left_player.portal_y);
	draw_sprite(s_sideboard_border,0,board_right_player.x_surface+board_right_player.portal_x,board_right_player.y_surface+board_right_player.portal_y);
	draw_sprite(s_sideboard_border,0,board_left_opp.x_surface+board_left_opp.portal_x,board_left_opp.y_surface+board_left_opp.portal_y);
	draw_sprite(s_sideboard_border,0,board_right_opp.x_surface+board_right_opp.portal_x,board_right_opp.y_surface+board_right_opp.portal_y);
}