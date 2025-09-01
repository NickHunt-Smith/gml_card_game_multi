/// @description Insert description here
// You can write your code in this editor

if global.player_locale_1 != noone {
	if global.player_locale_1.frozen = false {
		global.player_locale_1.frozen = true;
		global.player_locale_1.memory_channel = global.player_locale_1.channel;
		global.player_locale_1.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_2 != noone {
	if global.player_locale_2.frozen = false {
		global.player_locale_2.frozen = true;
		global.player_locale_2.memory_channel = global.player_locale_2.channel;
		global.player_locale_2.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_3 != noone {
	if global.player_locale_3.frozen = false {
		global.player_locale_3.frozen = true;
		global.player_locale_3.memory_channel = global.player_locale_3.channel;
		global.player_locale_3.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.player_locale_4 != noone {
	if global.player_locale_4.frozen = false {
		global.player_locale_4.frozen = true;
		global.player_locale_4.memory_channel = global.player_locale_4.channel;
		global.player_locale_4.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_1 != noone {
	if global.opp_locale_1.frozen = false {
		global.opp_locale_1.frozen = true;
		global.opp_locale_1.memory_channel = global.opp_locale_1.channel;
		global.opp_locale_1.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_2 != noone {
	if global.opp_locale_2.frozen = false {
		global.opp_locale_2.frozen = true;
		global.opp_locale_2.memory_channel = global.opp_locale_2.channel;
		global.opp_locale_2.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_3 != noone {
	if global.opp_locale_3.frozen = false {
		global.opp_locale_3.frozen = true;
		global.opp_locale_3.memory_channel = global.opp_locale_3.channel;
		global.opp_locale_3.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}
if global.opp_locale_4 != noone {
	if global.opp_locale_4.frozen = false {
		global.opp_locale_4.frozen = true;
		global.opp_locale_4.memory_channel = global.opp_locale_4.channel;
		global.opp_locale_4.channel = 0;
	}
	if opp = true {
		global.opponent.frozen_locales += 1;
	} else {
		global.player.frozen_locales += 1;
	}
}

alarm[0] = 70;