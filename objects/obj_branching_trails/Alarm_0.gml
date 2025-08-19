/// @description Insert description here
// You can write your code in this editor

if global.drafting = false {

	wait = false;
	eff_done = true;

	if opp = false {
		var draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 1;
		draft_inst.switch_priority = false;
		draft_inst.rarity_locked = true;
		draft_inst.rarity_locked_i = rarity_scry;
		draft_inst.element_locked = true;
		draft_inst.element_locked_i = element_scry;
		draft_inst.card_type_locked = true;
		draft_inst.card_type_locked_i = card_type_scry;
		
		global.player_enabled = false;
	} else if opp = true {
		array_push(global.opponent.hand_rarity,rarity_scry);
		array_push(global.opponent.hand_card_type,card_type_scry);
	}
} else {
	alarm[0] = 50;
}