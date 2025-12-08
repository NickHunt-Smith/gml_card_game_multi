if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
}

global.enemy_art = art;
global.player_art = char_alden_quellow;
player_portrait = instance_create_depth(x_surface + 0.35*view_wport[1],y_surface + 0.5*view_hport[1],depth-2,obj_portrait);
player_portrait.player_portrait = true;
player_portrait.big_scale_frame = 0.16;
player_portrait.big_scale_art = 0.105;
enemy_portrait = instance_create_depth(x_surface + 0.65*view_wport[1],y_surface + 0.5*view_hport[1],depth-2,obj_portrait);
enemy_portrait.player_portrait = false;
enemy_portrait.big_scale_frame = 0.16;
enemy_portrait.big_scale_art = 0.105;

texturegroup_load("Default");
alarm[1] = 200;