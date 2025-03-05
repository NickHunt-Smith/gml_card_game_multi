/// @description Insert description here
// You can write your code in this editor

if moused = true {
	tooltip_inst = instance_create_depth(mouse_x,mouse_y,-900,obj_tooltip);
	tooltip_inst.tooltip_sprite = global.rarity_list[rarity][element][1][0][card_index];
	tooltip_inst.spell = true;
	tooltip_created = true;
	
	if tooltip_extra = true {
		tooltip_inst.tooltip_extra = true;
		tooltip_inst.tooltip_text = tooltip_text;
		tooltip_inst.tooltip_text_plural = tooltip_text_plural;
		tooltip_inst.tooltip_counter = tooltip_counter;
	}
}