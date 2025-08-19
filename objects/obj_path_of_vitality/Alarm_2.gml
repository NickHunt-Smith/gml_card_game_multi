/// @description Insert description here
// You can write your code in this editor

targets = []; 
if global.opp_locale_1 != noone {
	array_push(targets,global.opp_locale_1);
}
if global.opp_locale_2 != noone {
	array_push(targets,global.opp_locale_2);
}
if global.opp_locale_3 != noone {
	array_push(targets,global.opp_locale_3);
}
if global.opp_locale_4 != noone {
	array_push(targets,global.opp_locale_4);
}
if global.player_locale_1 != noone {
	array_push(targets,global.player_locale_1);
}
if global.player_locale_2 != noone {
	array_push(targets,global.player_locale_2);
}
if global.player_locale_3 != noone {
	array_push(targets,global.player_locale_3);
}
if global.player_locale_4 != noone {
	array_push(targets,global.player_locale_4);
}


roots = []; 
for (var _i = 0; _i < array_length(targets); _i++) {
	array_push(roots,layer_sequence_create("effect_layer",targets[_i].x + 112,targets[_i].y + 184,seq_roots));
}

alarm[1] = 40;


