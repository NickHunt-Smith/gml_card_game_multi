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
		draft_inst.new_turn = true;
		global.opponent = instance_create_depth(0,0,0,obj_opponent_pvp);
		global.player = instance_create_depth(0,0,0,obj_player);
		var opp_hand_manager = instance_create_depth(0,0,0,obj_opp_hand_manager);
	}
} else {
	draft_inst = instance_create_depth(1510,400,-800,obj_draft_area);
	draft_inst.draft_count = 3;
	draft_inst.debug_test = false;
	draft_inst.extra_opp_card = false;
	draft_inst.new_turn = true;
	global.opponent = instance_create_depth(0,0,0,obj_opponent);
	global.player = instance_create_depth(0,0,0,obj_player);
	var opp_hand_manager = instance_create_depth(0,0,0,obj_opp_hand_manager);
}