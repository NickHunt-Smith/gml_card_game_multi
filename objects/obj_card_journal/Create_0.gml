// Retrieve cards available
var file_id = file_text_open_read("cards_avail.json");
var json_string = "";
while (!file_text_eof(file_id)) {
	json_string += file_text_read_string(file_id);
	file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
global.cards_avail_json = json_parse(json_string);
cards_show_all = false;

rarity = 0;
element = 4;

card_locale_1 = noone;
card_locale_2 = noone;
card_locale_3 = noone;
card_locale_4 = noone;

card_spell_1 = noone;
card_spell_2 = noone;
card_spell_3 = noone;
card_spell_4 = noone;

page_flip = noone;
reverse = false;
alpha_next_text = 0.6;

opp_card_backs_locales = [s_common_card_back_locale,s_uncommon_card_back_locale,s_rare_card_back_locale,s_mythic_card_back_locale,s_legendary_card_back_locale];
opp_card_backs_spells = [s_common_card_back_spell,s_uncommon_card_back_spell,s_rare_card_back_spell,s_mythic_card_back_spell,s_legendary_card_back_spell];