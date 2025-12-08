if move_portraits = true {
	player_portrait.x = lerp(player_portrait.x,1522,portrait_move_rate);
	player_portrait.y = lerp(player_portrait.y,1376,portrait_move_rate);
	player_portrait.big_scale_art = lerp(player_portrait.big_scale_art,0.105,portrait_move_rate);
	player_portrait.big_scale_frame = lerp(player_portrait.big_scale_frame,0.16,portrait_move_rate);
	enemy_portrait.x = lerp(enemy_portrait.x,1522,portrait_move_rate);
	enemy_portrait.y = lerp(enemy_portrait.y,130,portrait_move_rate);
	enemy_portrait.big_scale_art = lerp(enemy_portrait.big_scale_art,0.105,portrait_move_rate);
	enemy_portrait.big_scale_frame = lerp(enemy_portrait.big_scale_frame,0.16,portrait_move_rate);
}