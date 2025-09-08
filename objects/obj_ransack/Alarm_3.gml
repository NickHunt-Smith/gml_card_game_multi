/// @description Play discard

var copy = scr_play_spell(opp,rarity,element,card_index,noone,noone,noone,false,true);
copy.effect_function_inst.discard_variant = true;
alarm[4] = 100;