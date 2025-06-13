// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_spell(opp,rarity,element,card_index,target_1,target_2,target_3,play_seq = true,ignore_buffer = false){
	
	card_type = 1;
	card_attr = 0;
	var effect_function = global.rarity_list[rarity][element][1][2][card_index];
	var spell_sprite = global.rarity_list[rarity][element][1][1][card_index];
	
	object_set_sprite(obj_spell_played,global.rarity_list[rarity][element][1][0][card_index])
	inst_art_spell = instance_create_depth(1527 - 140*(array_length(global.spell_stack)+1 - 1) +70*(array_length(global.spell_stack)),753,-801,obj_spell_played)
	inst_art_spell.rarity = rarity;
	inst_art_spell.element = element;
	inst_art_spell.card_type = card_type;
	inst_art_spell.card_attr = card_attr;
	inst_art_spell.card_index = card_index;
	inst_art_spell.spell_sprite = spell_sprite;
	inst_art_spell.opp = opp;
	if play_seq = false {
		inst_art_spell.just_played = false;
	}
		
		
	if array_length(global.spell_stack) = 0 {
		global.stack_active = true;
		instance_create_depth(0,0,0,obj_spell_stack);
	}
	array_push(global.spell_stack,inst_art_spell);
	inst_art_spell.order_in_stack = array_length(global.spell_stack);
	
	effect_inst_opp_spell = instance_create_depth(inst_art_spell.x,inst_art_spell.y,-800,effect_function);
	effect_inst_opp_spell.eff_type = "play";
	effect_inst_opp_spell.card_state = inst_art_spell;
	inst_art_spell.effect_function_inst = effect_inst_opp_spell;	
	effect_inst_opp_spell.target_1 = target_1;
	effect_inst_opp_spell.target_2 = target_2;
	effect_inst_opp_spell.target_3 = target_3;
	effect_inst_opp_spell.opp = opp;
	if ignore_buffer = true {
		effect_inst_opp_spell.ignore_buffer = true;
	}
		
	if element = 0 {
		if opp = true {
			global.opponent.ruby_spells_played += 1;
		} else {
			global.player.ruby_spells_played += 1;
		}
	}
	
	return inst_art_spell
	
}