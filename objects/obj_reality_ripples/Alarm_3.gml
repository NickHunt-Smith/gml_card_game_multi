/// @description Insert description here
// You can write your code in this editor

var channel_1 = target_1.channel;
var channel_2 = target_2.channel;
var strength_1 = target_1.health_locale;
var strength_2 = target_2.health_locale;

target_1.channel = channel_2;
target_2.channel = channel_1;
target_1.health_locale = strength_2;
target_2.health_locale = strength_1;

alarm[0] = 60;

