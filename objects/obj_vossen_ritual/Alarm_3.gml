/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < array_length(sacrifices); _i++) {
	layer_sequence_destroy(sacrifices[_i]);
}
sacrifices = [];

for (var _i = 0; _i < array_length(targets); _i++) {
	targets[_i].health_locale = 0;
}

alarm[0] = 60;
