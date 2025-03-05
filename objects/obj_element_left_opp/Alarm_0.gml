/// @description Insert description here
// You can write your code in this editor

if moused = true {
	tooltip_inst = instance_create_depth(mouse_x,mouse_y,-900,obj_tooltip_channel);
	tooltip_inst.channel_arr = global.channelled_left_opp;
	tooltip_inst.opp = true;
	tooltip_created = true;
}