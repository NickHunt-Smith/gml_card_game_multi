
array_delete(global.spell_stack,array_length(global.spell_stack)-1,1);
var copy = scr_play_spell(opp,target_1.rarity,target_1.element,target_1.card_index,target_1.target_1,target_1.target_2,target_1.target_3,false);
instance_destroy(card_state);
alarm[2] = 100;