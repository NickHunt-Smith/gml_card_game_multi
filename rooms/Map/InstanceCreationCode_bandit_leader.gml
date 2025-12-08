self.encounter_name = "bandit_leader";
self.encounter_title = "Bandit Leader";
self.sprite_index = s_encounter_icon;
self.rarity = 1;
self.win_threshold = 8;
self.art = char_bandit_leader;
self.next_encounters = [];
self.card_unlocks_element = [6,6,6,2];
self.card_unlocks_rarity = [0,1,0,1];
self.card_unlocks_card_type = [0,1,1,0];
self.card_unlocks_card_index = [2,2,1,2];

var file_id = file_text_open_read("progress.json");
var json_string = "";
while (!file_text_eof(file_id)) {
	json_string += file_text_read_string(file_id);
	file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
var progress_data = json_parse(json_string);

if progress_data[$ encounter_name][$ "unlocked"] = true {
	self.unlocked = true;
} else {
	self.unlocked = false;
}