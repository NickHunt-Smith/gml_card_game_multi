zoomed_in = true;

duel_button = instance_create_depth(x+485,y+183,depth-2,obj_encounter_button);
duel_button.rarity = rarity;
duel_button.encounter_name = encounter_name;
duel_button.win_threshold = win_threshold;
duel_button.art = art;
duel_button.sprite_index = s_settings_button;