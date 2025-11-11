alpha_story_frame = 1;
alpha_story_portrait = 1;
alpha_next_text = 0.6;
reverse = false;
fade_in = true;

narrator = false;
locale_art = s_amethyst_obelisk_art;
character_art = char_emery_reed;
character_name = "?";
text = "The quick brown fox jumped over the lazy dog.";
curr_scene = 0;
_text = 0;
scene_playing = false;
text_rolling = false;
duel_button = noone;
enemy = noone;
arrow = false;
text_scale = 1;
tutorial_step = 0;


//text = "The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog."
chars_revealed = 0;
reveal_speed = 0.5;
text_width_narrator = 540*2;
text_width_character = 380*2;

var file_id = file_text_open_read("tutorial.json");
var json_string = "";
while (!file_text_eof(file_id)) {
    json_string += file_text_read_string(file_id);
    file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
tutorial_json = json_parse(json_string);
encounter_story = tutorial_json[$ "tutorial"];

target_x = 0;
target_y = 0;