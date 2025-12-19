
if music_curr != music_prev {
	if music_curr != noone && music_curr != "noone" {
		if music_prev = noone {
			music_inst = audio_play_sound(music_curr,10,true);
			music_prev = music_curr;
		} else {
			var volume_temp = clamp(audio_sound_get_gain(music_inst)-0.005,0,1);
			audio_sound_gain(music_inst,volume_temp);
			if audio_sound_get_gain(music_inst) = 0 {
				audio_stop_sound(music_inst);
				music_inst = audio_play_sound(music_curr,10,true);
				music_prev = music_curr;
			}
		}
	} else {
		var volume_temp = clamp(audio_sound_get_gain(music_inst)-0.005,0,1);
		audio_sound_gain(music_inst,volume_temp);
		if audio_sound_get_gain(music_inst) = 0 {
			audio_stop_sound(music_inst);
			music_prev = music_curr;
		}
	}
}