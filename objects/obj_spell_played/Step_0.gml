/// @description Insert description here
// You can write your code in this editor

position = "stack" + string(order_in_stack-1);

if just_played = true {
	if rarity = 0 {
		play_seq = layer_sequence_create("effect_layer",x,y,seq_play_common_spell);
	} else if rarity = 1 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_ruby_spell);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_pearl_spell);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_onyx_spell);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_sapphire_spell);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_emerald_spell);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_citrine_spell);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_opal_spell);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_uncommon_amethyst_spell);
		}
	} else if rarity = 2 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_ruby_spell);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_pearl_spell);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_onyx_spell);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_sapphire_spell);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_emerald_spell);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_citrine_spell);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_opal_spell);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_rare_amethyst_spell);
		}
	} else if rarity = 3 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_ruby_spell);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_pearl_spell);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_onyx_spell);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_sapphire_spell);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_emerald_spell);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_citrine_spell);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_opal_spell);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_mythic_amethyst_spell);
		} 
		screenshake(10, 4, 0.4);
	} else if rarity = 4 {
		if element = 0 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_ruby_spell);
		} else if element = 1 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_pearl_spell);
		} else if element = 2 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_onyx_spell);
		} else if element = 3 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_sapphire_spell);
		} else if element = 4 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_emerald_spell);
		} else if element = 5 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_citrine_spell);
		} else if element = 6 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_opal_spell);
		} else if element = 7 {
			play_seq = layer_sequence_create("effect_layer",x,y,seq_play_legendary_amethyst_spell);
		}
		screenshake(10, 4, 0.4);
	}
	just_played = false;
	alarm[5] = 90;
}

if (mouse_x > x-65) && (mouse_x < x + 65) && (mouse_y > y-65) && (mouse_y < y + 65) {
//if (collision_point(mouse_x,mouse_y,self,false,false)) {
	moused = true;
} else {
	moused = false;
}

if global.resolve_stack = false && big_mode = false {
	x = lerp(x, 1527 - 140*(order_in_stack - 1) +70*(array_length(global.spell_stack) - 1), lerp_amount);
	//x = lerp(x, 1527 + 140*(array_length(global.spell_stack) - order_in_stack), lerp_amount);
	y = lerp(y, y_stack, lerp_amount);
}

if (global.targeting_spell = true) && (moused) && (highlighted = false) {
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		target_highlight = part_system_create(Ps_spell_Highlight_small_1);
		part_system_position(target_highlight,x,y);
		part_system_depth(target_highlight,-1000);
		highlighted = true;
	}
} 

if target_highlight != noone {
	part_system_position(target_highlight,x,y);
}

if (global.targeting_spell = true) && (!moused) && (highlighted = true) {
	if (global.source_target.allowed_target_opp = true && opp = true) or (global.source_target.allowed_target_player = true && opp = false) {
		part_system_destroy(target_highlight);
		target_highlight = noone;
		highlighted = false;
	}
}