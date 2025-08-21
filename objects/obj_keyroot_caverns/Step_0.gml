/// @description Insert description here
// You can write your code in this editor

if eff_type = "play" && wait_shield = false {
	spark = layer_sequence_create("effect_layer",card_state.x + 112,card_state.y + 184,seq_shield);
	wait_shield = true;
	card_state.shielded = true;
	card_state.illusory = true;
	alarm[1] = 60;
}

if (eff_type = "end_turn") && (wait = false) {
	if eff_done = true {
		global.wait_for_effect = false;
		instance_destroy();
	} else {
		
		var seqs = scr_channel_element(card_state);
		channel_seq = seqs[0];
		seq_change_health = seqs[1];
		
		if card_state.frozen = true {
			card_state.frozen = false;
			card_state.channel = card_state.memory_channel;
		}
	
		wait = true;
	
		alarm[0] = 100;
	}
	
}