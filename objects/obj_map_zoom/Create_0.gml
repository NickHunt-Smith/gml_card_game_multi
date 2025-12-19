/// @description Insert description here
// You can write your code in this editor

var _loaded = texturegroup_load("map");

var file_id = file_text_open_read("story.json");
var json_string = "";
while (!file_text_eof(file_id)) {
    json_string += file_text_read_string(file_id);
    file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
global.story_json = json_parse(json_string);

lerp_amount = 0.05
resize_scale = 1
x_start = 1696;
y_start = 2912;
x_origin = 42
slider_height = 350
y_camera_1 = 113
y_camera_2 = 168
y_camera_3 = 221
y_camera_4 = 270
y_camera_5 = 318
origin_x = 0
origin_y = 0
global.resizing = false;
global.reposition = false;
global.encounter_visible = false;
global.story_active = false;

button_1 = true
button_2 = false
button_3 = false
button_4 = false
button_5 = false

camera_set_view_pos(view_camera[1],560,2500);
global.zoom_inst = self;

vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();
global.big_mode = false;

// Retrieve cards available
var file_id = file_text_open_read("cards_avail.json");
var json_string = "";
while (!file_text_eof(file_id)) {
	json_string += file_text_read_string(file_id);
	file_text_readln(file_id); // Read newline characters as well
}
file_text_close(file_id);
global.cards_avail_json = json_parse(json_string);