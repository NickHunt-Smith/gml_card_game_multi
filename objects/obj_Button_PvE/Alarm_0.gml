
if portal_seq_1 != noone {
	layer_sequence_destroy(portal_seq_1);
	portal_seq_1 = noone;
}

player_portrait = instance_create_depth(0.35*view_wport,0.5*view_hport,depth-2,obj_portrait);
player_portrait.player_portrait = true;
enemy_portrait = instance_create_depth(0.65*view_wport,0.5*view_hport,depth-2,obj_portrait);
enemy_portrait.player_portrait = false;

texturegroup_load("Default");
alarm[1] = 200;