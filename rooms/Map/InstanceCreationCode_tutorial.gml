self.encounter_name = "tutorial";
self.encounter_title = "Corrick";
self.sprite_index = s_brindlevale_sepia;
self.rarity = 0;
self.win_threshold = 4;
self.art = char_corrick;
self.next_encounters = ["bandit_grunt"];
self.card_unlocks_element = [3,3,3,4,4,4,1,1];
self.card_unlocks_rarity = [0,0,0,0,0,0,0,0];
self.card_unlocks_card_type = [0,1,1,0,0,1,0,1];
self.card_unlocks_card_index = [0,0,1,0,2,2,0,1];

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