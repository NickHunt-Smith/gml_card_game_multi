/// @description Insert description here
// You can write your code in this editor

if opp = true and array_length(global.cards_in_hand) > array_length(global.cards_in_hand_opp) {
	array_push(global.opponent.hand_rarity,rarity_scry);
	array_push(global.opponent.hand_card_type,card_type_scry);
	alarm[3] = 20;
} else if opp = false and array_length(global.cards_in_hand) < array_length(global.cards_in_hand_opp) {
	element_scry = irandom(7);
	
	var card_index_dist = [0];
	for (var _i = 0; _i < array_length(global.rarity_list[rarity_scry][element_scry][card_type_scry][0]); _i++) {
		array_push(card_index_dist,(_i+1)*100/array_length(global.rarity_list[rarity_scry][element_scry][card_type_scry][0]))
	}
	card_index = 0; 
	var temp = random(100);
	for (var _i = 0; _i < array_length(card_index_dist); _i++) {
		if temp >= card_index_dist[_i] && temp < card_index_dist[_i+1] {
			card_index = _i;
		}
	}
	
	created = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_scry_portal);
	var copy_struct = layer_sequence_get_instance(created);
	copy_struct.sequence.tracks[1].keyframes[0].channels[0].spriteIndex = global.rarity_list[rarity_scry][element_scry][card_type_scry][0][card_index];
	alarm[3] = 140;
} else {
	seq_no_target = layer_sequence_create("effect_layer",card_state.x,card_state.y,seq_no_targets);
	alarm[0] = 60;
}