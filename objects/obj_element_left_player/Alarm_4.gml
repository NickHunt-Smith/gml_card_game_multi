/// @description Insert description here
// You can write your code in this editor

instance_create_layer(1522,750,"transition",obj_transition_exit_game);

alarm[10] = 200;

// save win if pve
if global.pvp_active = false {
	var file_id = file_text_open_read("progress.json");
	var json_string = "";
	while (!file_text_eof(file_id)) {
		json_string += file_text_read_string(file_id);
		file_text_readln(file_id); // Read newline characters as well
	}
	file_text_close(file_id);
	var progress_data = json_parse(json_string);
	progress_data[$ global.encounter_name][$ "defeated"] = true;
	
	var modified_json_string = json_stringify(progress_data, true);
	file_id = file_text_open_write("progress.json");
	file_text_write_string(file_id, modified_json_string);
	file_text_close(file_id);
}