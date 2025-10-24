
enemy = noone;
rarity = s_common_centred;
art = s_amethyst_obelisk_art;
name = "Tutorial";

duel_button = instance_create_depth(x,y+120,depth-1,obj_encounter_button);
duel_button.enemy = enemy;

dont_destroy_yet = true;
alarm[0] = 10;
