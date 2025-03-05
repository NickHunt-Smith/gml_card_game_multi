// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_scry_card(rarity,element,card_type,card_index,order,card_inst_1){
	
	if order = 0 {
		x_draft = 1150;
		y_draft = 290;
	} else if order = 1 {
		x_draft = 1520;
		y_draft = 290;
	} else if order = 2 {
		x_draft = 1890;
		y_draft = 290;
	}
	
	if card_type = 0 {
		object_set_sprite(obj_locale,global.rarity_list[rarity][element][card_type][0][card_index]);
		card_inst_1 = instance_create_depth(x_draft,y_draft,-1000,obj_locale);
	} else {
		object_set_sprite(obj_spell,global.rarity_list[rarity][element][card_type][0][card_index]);
		card_inst_1 = instance_create_depth(x_draft,y_draft,-1000,obj_spell);
	}
	card_inst_1.rarity = rarity;
	card_inst_1.element = element;
	card_inst_1.card_type = card_type;
	card_inst_1.card_attr = 0;
	card_inst_1.card_index = card_index;
	card_inst_1.x_start = x_draft;
	card_inst_1.y_start = y_draft;
	card_inst_1.draft_mode = true;
	
	if card_type = 0 {
		var effect_function = global.rarity_list[rarity][element][card_type][4][card_index]
	} else {
		var effect_function = global.rarity_list[rarity][element][card_type][2][card_index]
	}
	var effect_inst = instance_create_depth(card_inst_1.x,card_inst_1.y,-800,effect_function);
	effect_inst.eff_type = "created";
	effect_inst.card_state = card_inst_1;
	effect_inst.opp = false;
	card_inst_1.created_eff = effect_inst
	
	return card_inst_1
}