
change_health_seqs = [];
for (var _i = 0; _i < array_length(targets); _i++) {
	var seq_change_health_1 = scr_change_numbers(channel_reduce,targets[_i].x+global.channel_offset_x,targets[_i].y + 328);
	array_push(change_health_seqs,seq_change_health_1);
	
	if targets[_i].frozen = true {
		if targets[_i].memory_channel != 0 {
			targets[_i].memory_channel += channel_reduce;
		}
	} else {
		if targets[_i].channel != 0 {
			targets[_i].channel += channel_reduce;
		}
	}
}

alarm[1] = 30;