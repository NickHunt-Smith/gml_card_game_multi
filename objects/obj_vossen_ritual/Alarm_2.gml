/// @description Insert description here
// You can write your code in this editor

sacrifices = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(sacrifices,layer_sequence_create("effect_layer",targets[_i].x + 112,targets[_i].y + 184,seq_sacrifice));
}

alarm[3] = 134;
