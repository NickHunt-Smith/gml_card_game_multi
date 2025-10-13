/// @description Insert description here
// You can write your code in this editor


if global.player_locale_1 != noone && global.player_locale_1.rarity < 4 {
	global.player_locale_1.health_locale = 0;
}
if global.player_locale_2 != noone && global.player_locale_2.rarity < 4{
	global.player_locale_2.health_locale = 0;
}
if global.player_locale_3 != noone && global.player_locale_3.rarity < 4{
	global.player_locale_3.health_locale = 0;
}
if global.player_locale_4 != noone && global.player_locale_4.rarity < 4{
	global.player_locale_4.health_locale = 0;
}

if global.opp_locale_1 != noone && global.opp_locale_1.rarity < 4{
	global.opp_locale_1.health_locale = 0;
}
if global.opp_locale_2 != noone && global.opp_locale_2.rarity < 4{
	global.opp_locale_2.health_locale = 0;
}
if global.opp_locale_3 != noone && global.opp_locale_3.rarity < 4{
	global.opp_locale_3.health_locale = 0;
}
if global.opp_locale_4 != noone && global.opp_locale_4.rarity < 4{
	global.opp_locale_4.health_locale = 0;
}

alarm[0] = 40;