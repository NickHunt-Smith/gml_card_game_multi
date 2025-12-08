dont_destroy_yet = false;

duel_button = instance_create_depth(x,y+120,depth-1,obj_encounter_button);
duel_button.rarity = rarity;
duel_button.encounter_name = encounter_name;
duel_button.win_threshold = win_threshold;
duel_button.art = art;
