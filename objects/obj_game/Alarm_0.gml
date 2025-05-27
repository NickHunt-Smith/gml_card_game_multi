/// @description Insert description here
// You can write your code in this editor

if global.pvp_active = true {
	
	if sync_draft() = false {
		alarm[0] = 1;
	} else {
		draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
		draft_inst.draft_count = 3;
		draft_inst.debug_test = false;
		draft_inst.extra_opp_card = false;
	}
} else {
	draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
	draft_inst.draft_count = 3;
	draft_inst.debug_test = false;
	draft_inst.extra_opp_card = false;
}