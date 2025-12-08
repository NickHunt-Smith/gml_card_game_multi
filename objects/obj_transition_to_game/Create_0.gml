
surface = -1;
board_scale = 3.1;
background_angle = global.background_angle;
max_radius = 3000;
radius_1 = 1733;
x_surface = 0;
y_surface = 0;
portal_x = 1522;
portal_y = 780;
waiting_for_load = false;
move_portraits = false;
portal_active = false;
alpha_mood_lighting = 0.85;
portrait_move_rate = 0.15;

alarm[2] = 100;

player_portrait = instance_create_layer(global.camera_x_offset + 0.35*view_wport,0.5*view_hport,"above_cards",obj_portrait);
player_portrait.player_portrait = true;
player_portrait.alpha = 1;
player_portrait.big_scale_frame = 0.352;
player_portrait.big_scale_art = 0.231;
enemy_portrait = instance_create_layer(global.camera_x_offset + 0.65*view_wport,0.5*view_hport,"above_cards",obj_portrait);
enemy_portrait.player_portrait = false;
enemy_portrait.alpha = 1;
enemy_portrait.big_scale_frame = 0.352;
enemy_portrait.big_scale_art = 0.231;