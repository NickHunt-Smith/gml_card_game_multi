/// @description Insert description here
// You can write your code in this editor



if global.priority = "player" {
	if opp_banner_1 != noone {
		part_system_destroy(opp_banner_1);
		opp_banner_1 = noone;
	}
	if opp_banner_2 != noone {
		part_system_destroy(opp_banner_2);
		opp_banner_2 = noone;
	}
	increment_2 = 0;
	increment_1 = clamp(increment_1+20,0,512);
	//draw_sprite_part_ext(s_blue_priority_arrow,0,0,0,392,increment_1,712,1020,1,1,c_white,1);
	//draw_sprite_part_ext(s_blue_priority_arrow,0,0,0,392,increment_1,1937,1020,1,1,c_white,1);
	if player_banner_1 = noone {
		player_banner_1 = part_system_create(Ps_prio_player);
		part_system_position(player_banner_1, 912, 858);
		part_system_depth(player_banner_1,-800);
	}
	if player_banner_2 = noone {
		player_banner_2 = part_system_create(Ps_prio_player);
		part_system_position(player_banner_2, 2135, 858);
		part_system_depth(player_banner_2,-800);
	}
} else if global.priority = "opp" {
	if player_banner_1 != noone {
		part_system_destroy(player_banner_1);
		player_banner_1 = noone;
	}
	if player_banner_2 != noone {
		part_system_destroy(player_banner_2);
		player_banner_2 = noone;
	}
	increment_1 = 0;
	if increment_2 <= 512 {
		increment_2 = clamp(increment_2+20,0,512);
	}
	//draw_sprite_part_ext(s_red_priority_arrow,0,0,512-increment_2,392,increment_2,720,582-increment_2,1,1,c_white,1);
	//draw_sprite_part_ext(s_red_priority_arrow,0,0,512-increment_2,392,increment_2,1944,582-increment_2,1,1,c_white,1);
	if opp_banner_1 = noone {
		opp_banner_1 = part_system_create(Ps_prio_opp);
		part_system_position(opp_banner_1, 912, 654);
		part_system_depth(opp_banner_1,-800);
	}
	if opp_banner_2 = noone {
		opp_banner_2 = part_system_create(Ps_prio_opp);
		part_system_position(opp_banner_2, 2135, 654);
		part_system_depth(opp_banner_2,-800);
	}
}