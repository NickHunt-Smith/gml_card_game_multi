
created = layer_sequence_create("effect_layer",card_state.x+112,card_state.y+184,seq_scry_portal);
var copy_struct = layer_sequence_get_instance(created);
copy_struct.sequence.tracks[1].keyframes[0].channels[0].spriteIndex = global.rarity_list[rarity_scry][element_scry][card_type_scry][0][card_index_scry];
alarm[4] = 140;