/// @description Insert description here
// You can write your code in this editor

if target_1.frozen = false {
	target_1.frozen = true;
	target_1.memory_channel = target_1.channel;
	target_1.channel = 0;
}

if opp = true {
	global.opponent.frozen_locales += 1;
} else {
	global.player.frozen_locales += 1;
}

alarm[4] = 70;