if do_transition_portal = true {
	instance_create_layer(0.5*view_wport[0],0.5*view_hport[0],"settings",obj_transition_to_menu);
	global.disable_buttons = true;
}