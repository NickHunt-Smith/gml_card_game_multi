skip_button = instance_create_depth(x+485,y+183,depth-2,obj_encounter_button);
skip_button.rarity = rarity;
skip_button.encounter_name = encounter_name;
skip_button.win_threshold = win_threshold;
skip_button.art = art;
skip_button.story_text = self;
skip_button.sprite_index = s_settings_button;
global.story_active = true;