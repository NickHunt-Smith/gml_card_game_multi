self.encounter_name = "bandit_grunt";
self.sprite_index = s_encounter_icon;
self.rarity = 0;
self.art = char_bandit_grunt;
self.next_encounters = [];
self.card_unlocks_element = [];
self.card_unlocks_rarity = [];
self.card_unlocks_card_type = [];
self.card_unlocks_card_index = [];

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