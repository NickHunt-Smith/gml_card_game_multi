/// @description Insert description here
// You can write your code in this editor

seq_change_health = scr_change_numbers(channel_reduce,target_1.x+global.channel_offset_x,target_1.y + 328);
if target_1.frozen = true {
	target_1.memory_channel += channel_reduce;
} else {
	target_1.channel += channel_reduce;
}
alarm[0] = 30;

