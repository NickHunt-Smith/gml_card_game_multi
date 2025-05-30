
array_delete(global.spell_stack,card_state.order_in_stack,1);
if global.pvp_active = false {
	var copy = scr_play_spell(opp,target_1.rarity,target_1.element,target_1.card_index,target_1.target_1,target_1.target_2,target_1.target_3);
} 
instance_destroy(card_state);
instance_destroy();