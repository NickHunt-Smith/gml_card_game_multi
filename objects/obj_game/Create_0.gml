/// @description Database

var _loaded = texturegroup_load("Default");

//audio_play_sound(snd_volcano,10,true);

randomise();

global.camera_x_offset = 132;
camera_set_view_pos(view_camera[0],global.camera_x_offset,0);
//show_debug_message(window_get_width())
//show_debug_message(window_get_height())
//window_set_size(1920, 992);
//window_set_fullscreen(true)
global.card_offset_x = 112;
global.card_offset_y = 184;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
depth = -402;
increment = 0;
reverse = false;
global.health_offset_x = 193;
global.channel_offset_x = 50;

vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();

game_start = true;
if global.pvp_active = false {
	if random(100) < 50 or global.tutorial = true {
		global.priority = "player";
	} else {
		global.priority = "opp"
	}
}
global.no_pass_prio = false;
global.opponent = noone;
global.start_draft = true;
global.player_enabled = false;
global.stack_active = false;
global.resolve_stack = false;
global.targeting = false;
global.targeting_empty = false;
global.targeting_empty_nonempty = false;
global.targeting_spell = false;
global.targeting_hand = false;
global.drafting = false;
global.draft_area_visible = false;
global.big_mode = false;
global.end_game_trigger = false;
global.source_target = noone;
global.end_turn = instance_create_layer(2144,736,"On_Board",obj_end_turn);
draft_inst = noone;
global.cards_in_hand = [];
global.spell_stack = [];
global.being_destroyed = [];
global.destroy_effects = [];
global.ignore_next_opp_locale = 0;
global.rerolls_available = 0;
global.turn_count = 10;
global.win_threshold = 4;
global.lingering_active = false;
global.next_scry_legendary = false;
global.scrys_boosted = false;
global.rerolls_used = 0;
global.wait_for_tutorial_step = false;
global.tutorial_step = 0;
story_frame = noone;

global.player_copying = false;
global.opp_copying = false;
global.player_playing_locale = false;
global.opp_playing_locale = false;
global.skip_combat = false;

global.player_locale_1 = noone;
global.player_locale_2 = noone;
global.player_locale_3 = noone;
global.player_locale_4 = noone;

global.opp_locale_1 = noone;
global.opp_locale_2 = noone;
global.opp_locale_3 = noone;
global.opp_locale_4 = noone;

global.locale_highlight_left = noone;
global.locale_highlight_left_middle = noone;
global.locale_highlight_right_middle = noone;
global.locale_highlight_right = noone;

global.player_channel_1_ruby = 0;

global.player_channel_2_ruby = 0;

global.channelling_sys = [Ps_channel_ruby,Ps_channel_pearl,Ps_channel_onyx,Ps_channel_sapphire,Ps_channel_emerald,Ps_channel_citrine,Ps_channel_opal,Ps_channel_amethyst];
global.element_sprite_list = [s_ruby,s_pearl,s_onyx,s_sapphire,s_emerald,s_citrine,s_opal,s_amethyst];

// Ruby locales ============================================================================
// [0][0][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common Ruby locales

global.common_ruby_locales_sprite_list = []
global.common_ruby_locales_art_list = []
global.common_ruby_locales_health_list = []
global.common_ruby_locales_channel_list = []
global.common_ruby_locales_effect_list = []

global.common_ruby_locales_list = [global.common_ruby_locales_sprite_list,global.common_ruby_locales_art_list,
global.common_ruby_locales_health_list, global.common_ruby_locales_channel_list, global.common_ruby_locales_effect_list]

// 0
array_push(global.common_ruby_locales_sprite_list,s_Volcano_I)
array_push(global.common_ruby_locales_art_list,s_Volcano_I_art)
array_push(global.common_ruby_locales_health_list,2)
array_push(global.common_ruby_locales_channel_list,1)
array_push(global.common_ruby_locales_effect_list,obj_Volcano_I)

// 1
array_push(global.common_ruby_locales_sprite_list,s_active_volcano)
array_push(global.common_ruby_locales_art_list,s_active_volcano_art)
array_push(global.common_ruby_locales_health_list,2)
array_push(global.common_ruby_locales_channel_list,1)
array_push(global.common_ruby_locales_effect_list,obj_active_volcano)

// 2
array_push(global.common_ruby_locales_sprite_list,s_unstable_cliff)
array_push(global.common_ruby_locales_art_list,s_unstable_cliff_art)
array_push(global.common_ruby_locales_health_list,1)
array_push(global.common_ruby_locales_channel_list,2)
array_push(global.common_ruby_locales_effect_list,obj_unstable_cliff)

// Uncommon Ruby locales

global.uncommon_ruby_locales_sprite_list = []
global.uncommon_ruby_locales_art_list = []
global.uncommon_ruby_locales_health_list = []
global.uncommon_ruby_locales_channel_list = []
global.uncommon_ruby_locales_effect_list = []

global.uncommon_ruby_locales_list = [global.uncommon_ruby_locales_sprite_list,global.uncommon_ruby_locales_art_list,
global.uncommon_ruby_locales_health_list, global.uncommon_ruby_locales_channel_list, global.uncommon_ruby_locales_effect_list]

// 0
array_push(global.uncommon_ruby_locales_sprite_list,s_wisplit_hills)
array_push(global.uncommon_ruby_locales_art_list,s_wisplit_hills_art)
array_push(global.uncommon_ruby_locales_health_list,2)
array_push(global.uncommon_ruby_locales_channel_list,2)
array_push(global.uncommon_ruby_locales_effect_list,obj_wisplit_hills)

// 1
array_push(global.uncommon_ruby_locales_sprite_list,s_ruby_quarry)
array_push(global.uncommon_ruby_locales_art_list,s_ruby_quarry_art)
array_push(global.uncommon_ruby_locales_health_list,3)
array_push(global.uncommon_ruby_locales_channel_list,2)
array_push(global.uncommon_ruby_locales_effect_list,obj_ruby_quarry)

// 2
array_push(global.uncommon_ruby_locales_sprite_list,s_path_to_the_spiral)
array_push(global.uncommon_ruby_locales_art_list,s_path_to_the_spiral_art)
array_push(global.uncommon_ruby_locales_health_list,4)
array_push(global.uncommon_ruby_locales_channel_list,2)
array_push(global.uncommon_ruby_locales_effect_list,obj_path_to_the_spiral)

// Rare Ruby locales

global.rare_ruby_locales_sprite_list = []
global.rare_ruby_locales_art_list = []
global.rare_ruby_locales_health_list = []
global.rare_ruby_locales_channel_list = []
global.rare_ruby_locales_effect_list = []

global.rare_ruby_locales_list = [global.rare_ruby_locales_sprite_list,global.rare_ruby_locales_art_list,
global.rare_ruby_locales_health_list, global.rare_ruby_locales_channel_list, global.rare_ruby_locales_effect_list]

// 0
array_push(global.rare_ruby_locales_sprite_list,s_flame_spiral)
array_push(global.rare_ruby_locales_art_list,s_flame_spiral_art)
array_push(global.rare_ruby_locales_health_list,5)
array_push(global.rare_ruby_locales_channel_list,2)
array_push(global.rare_ruby_locales_effect_list,obj_flame_spiral)

// 1
array_push(global.rare_ruby_locales_sprite_list,s_ebron_foothills)
array_push(global.rare_ruby_locales_art_list,s_ebron_foothills_art)
array_push(global.rare_ruby_locales_health_list,5)
array_push(global.rare_ruby_locales_channel_list,3)
array_push(global.rare_ruby_locales_effect_list,obj_ebron_foothills)

// 2
array_push(global.rare_ruby_locales_sprite_list,s_gates_of_delgar)
array_push(global.rare_ruby_locales_art_list,s_gates_of_delgar_art)
array_push(global.rare_ruby_locales_health_list,6)
array_push(global.rare_ruby_locales_channel_list,3)
array_push(global.rare_ruby_locales_effect_list,obj_gates_of_delgar)

// Mythic Ruby locales

global.mythic_ruby_locales_sprite_list = []
global.mythic_ruby_locales_art_list = []
global.mythic_ruby_locales_health_list = []
global.mythic_ruby_locales_channel_list = []
global.mythic_ruby_locales_effect_list = []

global.mythic_ruby_locales_list = [global.mythic_ruby_locales_sprite_list,global.mythic_ruby_locales_art_list,
global.mythic_ruby_locales_health_list, global.mythic_ruby_locales_channel_list, global.mythic_ruby_locales_effect_list]

// 0
array_push(global.mythic_ruby_locales_sprite_list,s_geyser_fields)
array_push(global.mythic_ruby_locales_art_list,s_geyser_fields_art)
array_push(global.mythic_ruby_locales_health_list,5)
array_push(global.mythic_ruby_locales_channel_list,2)
array_push(global.mythic_ruby_locales_effect_list,obj_geyser_fields)

// 1
array_push(global.mythic_ruby_locales_sprite_list,s_ancient_forge)
array_push(global.mythic_ruby_locales_art_list,s_ancient_forge_art)
array_push(global.mythic_ruby_locales_health_list,4)
array_push(global.mythic_ruby_locales_channel_list,4)
array_push(global.mythic_ruby_locales_effect_list,obj_ancient_forge)

// 2
array_push(global.mythic_ruby_locales_sprite_list,s_welcoming_hearthside)
array_push(global.mythic_ruby_locales_art_list,s_welcoming_hearthside_art)
array_push(global.mythic_ruby_locales_health_list,8)
array_push(global.mythic_ruby_locales_channel_list,5)
array_push(global.mythic_ruby_locales_effect_list,obj_welcoming_hearthside)

// Legendary Ruby locales

global.legendary_ruby_locales_sprite_list = []
global.legendary_ruby_locales_art_list = []
global.legendary_ruby_locales_health_list = []
global.legendary_ruby_locales_channel_list = []
global.legendary_ruby_locales_effect_list = []

global.legendary_ruby_locales_list = [global.legendary_ruby_locales_sprite_list,global.legendary_ruby_locales_art_list,
global.legendary_ruby_locales_health_list, global.legendary_ruby_locales_channel_list, global.legendary_ruby_locales_effect_list]

// 0
array_push(global.legendary_ruby_locales_sprite_list,s_ebron_summit)
array_push(global.legendary_ruby_locales_art_list,s_ebron_summit_art)
array_push(global.legendary_ruby_locales_health_list,10)
array_push(global.legendary_ruby_locales_channel_list,5)
array_push(global.legendary_ruby_locales_effect_list,obj_ebron_summit)

// 1
array_push(global.legendary_ruby_locales_sprite_list,s_firestorm)
array_push(global.legendary_ruby_locales_art_list,s_firestorm_art)
array_push(global.legendary_ruby_locales_health_list,8)
array_push(global.legendary_ruby_locales_channel_list,5)
array_push(global.legendary_ruby_locales_effect_list,obj_firestorm)

// 2
array_push(global.legendary_ruby_locales_sprite_list,s_delgar_sulfuric_pass)
array_push(global.legendary_ruby_locales_art_list,s_delgar_sulfuric_pass_art)
array_push(global.legendary_ruby_locales_health_list,7)
array_push(global.legendary_ruby_locales_channel_list,9)
array_push(global.legendary_ruby_locales_effect_list,obj_delgar_sulfuric_pass)

// Ruby spells ============================================================================
// [0][0][1][0]  sprite = 0, art = 1, effect = 2

// Common Ruby spells

global.common_ruby_spells_sprite_list = []
global.common_ruby_spells_art_list = []
global.common_ruby_spells_effect_list = []

global.common_ruby_spells_list = [global.common_ruby_spells_sprite_list,global.common_ruby_spells_art_list,global.common_ruby_spells_effect_list]

// 0 
array_push(global.common_ruby_spells_sprite_list,s_spark)
array_push(global.common_ruby_spells_art_list,s_spark_art)
array_push(global.common_ruby_spells_effect_list,obj_spark)

// 1
array_push(global.common_ruby_spells_sprite_list,s_blowback)
array_push(global.common_ruby_spells_art_list,s_blowback_art)
array_push(global.common_ruby_spells_effect_list,obj_blowback)

// 2
array_push(global.common_ruby_spells_sprite_list,s_hastily_forged)
array_push(global.common_ruby_spells_art_list,s_hastily_forged_art)
array_push(global.common_ruby_spells_effect_list,obj_hastily_forged)

// Uncommon Ruby spells

global.uncommon_ruby_spells_sprite_list = []
global.uncommon_ruby_spells_art_list = []
global.uncommon_ruby_spells_effect_list = []

global.uncommon_ruby_spells_list = [global.uncommon_ruby_spells_sprite_list,global.uncommon_ruby_spells_art_list,global.uncommon_ruby_spells_effect_list]

// 0 
array_push(global.uncommon_ruby_spells_sprite_list,s_stray_fireball)
array_push(global.uncommon_ruby_spells_art_list,s_stray_fireball_art)
array_push(global.uncommon_ruby_spells_effect_list,obj_stray_fireball)

// 1
array_push(global.uncommon_ruby_spells_sprite_list,s_raining_embers)
array_push(global.uncommon_ruby_spells_art_list,s_raining_embers_art)
array_push(global.uncommon_ruby_spells_effect_list,obj_raining_embers)

// 2
array_push(global.uncommon_ruby_spells_sprite_list,s_coalesce)
array_push(global.uncommon_ruby_spells_art_list,s_coalesce_art)
array_push(global.uncommon_ruby_spells_effect_list,obj_coalesce)

// Rare Ruby spells

global.rare_ruby_spells_sprite_list = []
global.rare_ruby_spells_art_list = []
global.rare_ruby_spells_effect_list = []

global.rare_ruby_spells_list = [global.rare_ruby_spells_sprite_list,global.rare_ruby_spells_art_list,global.rare_ruby_spells_effect_list]

// 0 
array_push(global.rare_ruby_spells_sprite_list,s_flame_signal)
array_push(global.rare_ruby_spells_art_list,s_flame_signal_art)
array_push(global.rare_ruby_spells_effect_list,obj_flame_signal)

// 1
array_push(global.rare_ruby_spells_sprite_list,s_set_ablaze)
array_push(global.rare_ruby_spells_art_list,s_set_ablaze_art)
array_push(global.rare_ruby_spells_effect_list,obj_set_ablaze)

// 2
array_push(global.rare_ruby_spells_sprite_list,s_reckless_advance)
array_push(global.rare_ruby_spells_art_list,s_reckless_advance_art)
array_push(global.rare_ruby_spells_effect_list,obj_reckless_advance)

// Mythic Ruby spells

global.mythic_ruby_spells_sprite_list = []
global.mythic_ruby_spells_art_list = []
global.mythic_ruby_spells_effect_list = []

global.mythic_ruby_spells_list = [global.mythic_ruby_spells_sprite_list,global.mythic_ruby_spells_art_list,global.mythic_ruby_spells_effect_list]

// 0 
array_push(global.mythic_ruby_spells_sprite_list,s_eye_of_the_firestorm)
array_push(global.mythic_ruby_spells_art_list,s_eye_of_the_firestorm_art)
array_push(global.mythic_ruby_spells_effect_list,obj_eye_of_the_firestorm)

// 1
array_push(global.mythic_ruby_spells_sprite_list,s_erupt)
array_push(global.mythic_ruby_spells_art_list,s_erupt_art)
array_push(global.mythic_ruby_spells_effect_list,obj_erupt)

// 2
array_push(global.mythic_ruby_spells_sprite_list,s_the_gathering_firestorm)
array_push(global.mythic_ruby_spells_art_list,s_the_gathering_firestorm_art)
array_push(global.mythic_ruby_spells_effect_list,obj_the_gathering_firestorm)

// Legendary Ruby spells

global.legendary_ruby_spells_sprite_list = []
global.legendary_ruby_spells_art_list = []
global.legendary_ruby_spells_effect_list = []

global.legendary_ruby_spells_list = [global.legendary_ruby_spells_sprite_list,global.legendary_ruby_spells_art_list,global.legendary_ruby_spells_effect_list]

// 0 
array_push(global.legendary_ruby_spells_sprite_list,s_firesight)
array_push(global.legendary_ruby_spells_art_list,s_firesight_art)
array_push(global.legendary_ruby_spells_effect_list,obj_firesight)

// 1
array_push(global.legendary_ruby_spells_sprite_list,s_ebron_flare_captured)
array_push(global.legendary_ruby_spells_art_list,s_ebron_flare_captured_art)
array_push(global.legendary_ruby_spells_effect_list,obj_ebron_flare_captured)

// 2
array_push(global.legendary_ruby_spells_sprite_list,s_starshower)
array_push(global.legendary_ruby_spells_art_list,s_starshower_art)
array_push(global.legendary_ruby_spells_effect_list,obj_starshower)

// Pearl locales ============================================================================
// [0][1][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common pearl locales

global.common_pearl_locales_sprite_list = []
global.common_pearl_locales_art_list = []
global.common_pearl_locales_health_list = []
global.common_pearl_locales_channel_list = []
global.common_pearl_locales_effect_list = []

global.common_pearl_locales_list = [global.common_pearl_locales_sprite_list,global.common_pearl_locales_art_list,
global.common_pearl_locales_health_list, global.common_pearl_locales_channel_list, global.common_pearl_locales_effect_list]

// 0
array_push(global.common_pearl_locales_sprite_list,s_icebound_river)
array_push(global.common_pearl_locales_art_list,s_icebound_river_art)
array_push(global.common_pearl_locales_health_list,2)
array_push(global.common_pearl_locales_channel_list,1)
array_push(global.common_pearl_locales_effect_list,obj_icebound_river)

// 1
array_push(global.common_pearl_locales_sprite_list,s_defrosting_forest)
array_push(global.common_pearl_locales_art_list,s_defrosting_forest_art)
array_push(global.common_pearl_locales_health_list,3)
array_push(global.common_pearl_locales_channel_list,2)
array_push(global.common_pearl_locales_effect_list,obj_defrosting_forest)

// 2
array_push(global.common_pearl_locales_sprite_list,s_wayside_cabin)
array_push(global.common_pearl_locales_art_list,s_wayside_cabin_art)
array_push(global.common_pearl_locales_health_list,1)
array_push(global.common_pearl_locales_channel_list,1)
array_push(global.common_pearl_locales_effect_list,obj_wayside_cabin)

// Uncommon pearl locales

global.uncommon_pearl_locales_sprite_list = []
global.uncommon_pearl_locales_art_list = []
global.uncommon_pearl_locales_health_list = []
global.uncommon_pearl_locales_channel_list = []
global.uncommon_pearl_locales_effect_list = []

global.uncommon_pearl_locales_list = [global.uncommon_pearl_locales_sprite_list,global.uncommon_pearl_locales_art_list,
global.uncommon_pearl_locales_health_list, global.uncommon_pearl_locales_channel_list, global.uncommon_pearl_locales_effect_list]

// 0
array_push(global.uncommon_pearl_locales_sprite_list,s_lonely_outpost)
array_push(global.uncommon_pearl_locales_art_list,s_lonely_outpost_art)
array_push(global.uncommon_pearl_locales_health_list,6)
array_push(global.uncommon_pearl_locales_channel_list,1)
array_push(global.uncommon_pearl_locales_effect_list,obj_lonely_outpost)

// 1
array_push(global.uncommon_pearl_locales_sprite_list,s_veteran_barracks)
array_push(global.uncommon_pearl_locales_art_list,s_veteran_barracks_art)
array_push(global.uncommon_pearl_locales_health_list,4)
array_push(global.uncommon_pearl_locales_channel_list,2)
array_push(global.uncommon_pearl_locales_effect_list,obj_veteran_barracks)

// 2
array_push(global.uncommon_pearl_locales_sprite_list,s_evershear_entryway)
array_push(global.uncommon_pearl_locales_art_list,s_evershear_entryway_art)
array_push(global.uncommon_pearl_locales_health_list,4)
array_push(global.uncommon_pearl_locales_channel_list,2)
array_push(global.uncommon_pearl_locales_effect_list,obj_evershear_entryway)

// Rare pearl locales

global.rare_pearl_locales_sprite_list = []
global.rare_pearl_locales_art_list = []
global.rare_pearl_locales_health_list = []
global.rare_pearl_locales_channel_list = []
global.rare_pearl_locales_effect_list = []

global.rare_pearl_locales_list = [global.rare_pearl_locales_sprite_list,global.rare_pearl_locales_art_list,
global.rare_pearl_locales_health_list, global.rare_pearl_locales_channel_list, global.rare_pearl_locales_effect_list]

// 0
array_push(global.rare_pearl_locales_sprite_list,s_heart_labyrinth)
array_push(global.rare_pearl_locales_art_list,s_heart_labyrinth_art)
array_push(global.rare_pearl_locales_health_list,4)
array_push(global.rare_pearl_locales_channel_list,3)
array_push(global.rare_pearl_locales_effect_list,obj_heart_labyrinth)

// 1
array_push(global.rare_pearl_locales_sprite_list,s_mt_kushana)
array_push(global.rare_pearl_locales_art_list,s_mt_kushana_art)
array_push(global.rare_pearl_locales_health_list,7)
array_push(global.rare_pearl_locales_channel_list,4)
array_push(global.rare_pearl_locales_effect_list,obj_mt_kushana)

// 2
array_push(global.rare_pearl_locales_sprite_list,s_blueflame_stronghold)
array_push(global.rare_pearl_locales_art_list,s_blueflame_stronghold_art)
array_push(global.rare_pearl_locales_health_list,6)
array_push(global.rare_pearl_locales_channel_list,3)
array_push(global.rare_pearl_locales_effect_list,obj_blueflame_stronghold)

// Mythic pearl locales

global.mythic_pearl_locales_sprite_list = []
global.mythic_pearl_locales_art_list = []
global.mythic_pearl_locales_health_list = []
global.mythic_pearl_locales_channel_list = []
global.mythic_pearl_locales_effect_list = []

global.mythic_pearl_locales_list = [global.mythic_pearl_locales_sprite_list,global.mythic_pearl_locales_art_list,
global.mythic_pearl_locales_health_list, global.mythic_pearl_locales_channel_list, global.mythic_pearl_locales_effect_list]

// 0
array_push(global.mythic_pearl_locales_sprite_list,s_eternal_blueflame)
array_push(global.mythic_pearl_locales_art_list,s_eternal_blueflame_art)
array_push(global.mythic_pearl_locales_health_list,5)
array_push(global.mythic_pearl_locales_channel_list,2)
array_push(global.mythic_pearl_locales_effect_list,obj_eternal_blueflame)

// 1
array_push(global.mythic_pearl_locales_sprite_list,s_evershear_throne_room)
array_push(global.mythic_pearl_locales_art_list,s_evershear_throne_room_art)
array_push(global.mythic_pearl_locales_health_list,8)
array_push(global.mythic_pearl_locales_channel_list,4)
array_push(global.mythic_pearl_locales_effect_list,obj_evershear_throne_room)

// 2
array_push(global.mythic_pearl_locales_sprite_list,s_evershear)
array_push(global.mythic_pearl_locales_art_list,s_evershear_art)
array_push(global.mythic_pearl_locales_health_list,7)
array_push(global.mythic_pearl_locales_channel_list,4)
array_push(global.mythic_pearl_locales_effect_list,obj_evershear)

// Legendary pearl locales

global.legendary_pearl_locales_sprite_list = []
global.legendary_pearl_locales_art_list = []
global.legendary_pearl_locales_health_list = []
global.legendary_pearl_locales_channel_list = []
global.legendary_pearl_locales_effect_list = []

global.legendary_pearl_locales_list = [global.legendary_pearl_locales_sprite_list,global.legendary_pearl_locales_art_list,
global.legendary_pearl_locales_health_list, global.legendary_pearl_locales_channel_list, global.legendary_pearl_locales_effect_list]

// 0
array_push(global.legendary_pearl_locales_sprite_list,s_evershear_keep)
array_push(global.legendary_pearl_locales_art_list,s_evershear_keep_art)
array_push(global.legendary_pearl_locales_health_list,11)
array_push(global.legendary_pearl_locales_channel_list,4)
array_push(global.legendary_pearl_locales_effect_list,obj_evershear_keep)

// 1
array_push(global.legendary_pearl_locales_sprite_list,s_heart_of_certona)
array_push(global.legendary_pearl_locales_art_list,s_heart_of_certona_art)
array_push(global.legendary_pearl_locales_health_list,10)
array_push(global.legendary_pearl_locales_channel_list,5)
array_push(global.legendary_pearl_locales_effect_list,obj_heart_of_certona)

// 2
array_push(global.legendary_pearl_locales_sprite_list,s_certona_tundra)
array_push(global.legendary_pearl_locales_art_list,s_certona_tundra_art)
array_push(global.legendary_pearl_locales_health_list,9)
array_push(global.legendary_pearl_locales_channel_list,4)
array_push(global.legendary_pearl_locales_effect_list,obj_certona_tundra)

// pearl spells ============================================================================
// [0][1][1][0]  sprite = 0, art = 1, effect = 2

// Common pearl spells

global.common_pearl_spells_sprite_list = []
global.common_pearl_spells_art_list = []
global.common_pearl_spells_effect_list = []

global.common_pearl_spells_list = [global.common_pearl_spells_sprite_list,global.common_pearl_spells_art_list,global.common_pearl_spells_effect_list]

// 0 
array_push(global.common_pearl_spells_sprite_list,s_escape_to_nowhere)
array_push(global.common_pearl_spells_art_list,s_escape_to_nowhere_art)
array_push(global.common_pearl_spells_effect_list,obj_escape_to_nowhere)

// 1
array_push(global.common_pearl_spells_sprite_list,s_marble_foundations)
array_push(global.common_pearl_spells_art_list,s_marble_foundations_art)
array_push(global.common_pearl_spells_effect_list,obj_marble_foundations)

// 2
array_push(global.common_pearl_spells_sprite_list,s_shatter)
array_push(global.common_pearl_spells_art_list,s_shatter_art)
array_push(global.common_pearl_spells_effect_list,obj_shatter)

// Uncommon pearl spells

global.uncommon_pearl_spells_sprite_list = []
global.uncommon_pearl_spells_art_list = []
global.uncommon_pearl_spells_effect_list = []

global.uncommon_pearl_spells_list = [global.uncommon_pearl_spells_sprite_list,global.uncommon_pearl_spells_art_list,global.uncommon_pearl_spells_effect_list]

// 0 
array_push(global.uncommon_pearl_spells_sprite_list,s_somber_expedition)
array_push(global.uncommon_pearl_spells_art_list,s_somber_expedition_art)
array_push(global.uncommon_pearl_spells_effect_list,obj_somber_expedition)

// 1
array_push(global.uncommon_pearl_spells_sprite_list,s_preserve)
array_push(global.uncommon_pearl_spells_art_list,s_preserve_art)
array_push(global.uncommon_pearl_spells_effect_list,obj_preserve)

// 2
array_push(global.uncommon_pearl_spells_sprite_list,s_evershield)
array_push(global.uncommon_pearl_spells_art_list,s_evershield_art)
array_push(global.uncommon_pearl_spells_effect_list,obj_evershield)

// Rare pearl spells

global.rare_pearl_spells_sprite_list = []
global.rare_pearl_spells_art_list = []
global.rare_pearl_spells_effect_list = []

global.rare_pearl_spells_list = [global.rare_pearl_spells_sprite_list,global.rare_pearl_spells_art_list,global.rare_pearl_spells_effect_list]

// 0 
array_push(global.rare_pearl_spells_sprite_list,s_ice_shroud)
array_push(global.rare_pearl_spells_art_list,s_ice_shroud_art)
array_push(global.rare_pearl_spells_effect_list,obj_ice_shroud)

// 1
array_push(global.rare_pearl_spells_sprite_list,s_blueflame_torch)
array_push(global.rare_pearl_spells_art_list,s_blueflame_torch_art)
array_push(global.rare_pearl_spells_effect_list,obj_blueflame_torch)

// 2
array_push(global.rare_pearl_spells_sprite_list,s_heroic_charge)
array_push(global.rare_pearl_spells_art_list,s_heroic_charge_art)
array_push(global.rare_pearl_spells_effect_list,obj_heroic_charge)

// Mythic pearl spells

global.mythic_pearl_spells_sprite_list = []
global.mythic_pearl_spells_art_list = []
global.mythic_pearl_spells_effect_list = []

global.mythic_pearl_spells_list = [global.mythic_pearl_spells_sprite_list,global.mythic_pearl_spells_art_list,global.mythic_pearl_spells_effect_list]

// 0 
array_push(global.mythic_pearl_spells_sprite_list,s_outmaneuvered)
array_push(global.mythic_pearl_spells_art_list,s_outmaneuvered_art)
array_push(global.mythic_pearl_spells_effect_list,obj_outmaneuvered)

// 1
array_push(global.mythic_pearl_spells_sprite_list,s_avalanche)
array_push(global.mythic_pearl_spells_art_list,s_avalanche_art)
array_push(global.mythic_pearl_spells_effect_list,obj_avalanche)

// 2
array_push(global.mythic_pearl_spells_sprite_list,s_seal_in_ice)
array_push(global.mythic_pearl_spells_art_list,s_seal_in_ice_art)
array_push(global.mythic_pearl_spells_effect_list,obj_seal_in_ice)

// Legendary pearl spells

global.legendary_pearl_spells_sprite_list = []
global.legendary_pearl_spells_art_list = []
global.legendary_pearl_spells_effect_list = []

global.legendary_pearl_spells_list = [global.legendary_pearl_spells_sprite_list,global.legendary_pearl_spells_art_list,global.legendary_pearl_spells_effect_list]

// 0 
array_push(global.legendary_pearl_spells_sprite_list,s_blueflame_onslaught)
array_push(global.legendary_pearl_spells_art_list,s_blueflame_onslaught_art)
array_push(global.legendary_pearl_spells_effect_list,obj_blueflame_onslaught)

// 1
array_push(global.legendary_pearl_spells_sprite_list,s_hearts_protection)
array_push(global.legendary_pearl_spells_art_list,s_hearts_protection_art)
array_push(global.legendary_pearl_spells_effect_list,obj_hearts_protection)

// 2
array_push(global.legendary_pearl_spells_sprite_list,s_isolate)
array_push(global.legendary_pearl_spells_art_list,s_isolate_art)
array_push(global.legendary_pearl_spells_effect_list,obj_isolate)

// onyx locales ============================================================================
// [0][2][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common onyx locales

global.common_onyx_locales_sprite_list = []
global.common_onyx_locales_art_list = []
global.common_onyx_locales_health_list = []
global.common_onyx_locales_channel_list = []
global.common_onyx_locales_effect_list = []

global.common_onyx_locales_list = [global.common_onyx_locales_sprite_list,global.common_onyx_locales_art_list,
global.common_onyx_locales_health_list, global.common_onyx_locales_channel_list, global.common_onyx_locales_effect_list]

// 0
array_push(global.common_onyx_locales_sprite_list,s_unexplored_cave)
array_push(global.common_onyx_locales_art_list,s_unexplored_cave_art)
array_push(global.common_onyx_locales_health_list,2)
array_push(global.common_onyx_locales_channel_list,1)
array_push(global.common_onyx_locales_effect_list,obj_unexplored_cave)

// 1
array_push(global.common_onyx_locales_sprite_list,s_fetid_sewer)
array_push(global.common_onyx_locales_art_list,s_fetid_sewer_art)
array_push(global.common_onyx_locales_health_list,1)
array_push(global.common_onyx_locales_channel_list,1)
array_push(global.common_onyx_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_onyx_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_onyx_locales_art_list,s_decrepit_chapel_art)
array_push(global.common_onyx_locales_health_list,1)
array_push(global.common_onyx_locales_channel_list,2)
array_push(global.common_onyx_locales_effect_list,obj_decrepit_chapel)

// Uncommon onyx locales

global.uncommon_onyx_locales_sprite_list = []
global.uncommon_onyx_locales_art_list = []
global.uncommon_onyx_locales_health_list = []
global.uncommon_onyx_locales_channel_list = []
global.uncommon_onyx_locales_effect_list = []

global.uncommon_onyx_locales_list = [global.uncommon_onyx_locales_sprite_list,global.uncommon_onyx_locales_art_list,
global.uncommon_onyx_locales_health_list, global.uncommon_onyx_locales_channel_list, global.uncommon_onyx_locales_effect_list]

// 0
array_push(global.uncommon_onyx_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_onyx_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_onyx_locales_health_list,2)
array_push(global.uncommon_onyx_locales_channel_list,2)
array_push(global.uncommon_onyx_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_onyx_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_onyx_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_onyx_locales_health_list,2)
array_push(global.uncommon_onyx_locales_channel_list,2)
array_push(global.uncommon_onyx_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_onyx_locales_sprite_list,s_wasteland)
array_push(global.uncommon_onyx_locales_art_list,s_wasteland_art)
array_push(global.uncommon_onyx_locales_health_list,2)
array_push(global.uncommon_onyx_locales_channel_list,3)
array_push(global.uncommon_onyx_locales_effect_list,obj_wasteland)

// Rare onyx locales

global.rare_onyx_locales_sprite_list = []
global.rare_onyx_locales_art_list = []
global.rare_onyx_locales_health_list = []
global.rare_onyx_locales_channel_list = []
global.rare_onyx_locales_effect_list = []

global.rare_onyx_locales_list = [global.rare_onyx_locales_sprite_list,global.rare_onyx_locales_art_list,
global.rare_onyx_locales_health_list, global.rare_onyx_locales_channel_list, global.rare_onyx_locales_effect_list]

// 0
array_push(global.rare_onyx_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_onyx_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_onyx_locales_health_list,5)
array_push(global.rare_onyx_locales_channel_list,3)
array_push(global.rare_onyx_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_onyx_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_onyx_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_onyx_locales_health_list,4)
array_push(global.rare_onyx_locales_channel_list,3)
array_push(global.rare_onyx_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_onyx_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_onyx_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_onyx_locales_health_list,4)
array_push(global.rare_onyx_locales_channel_list,3)
array_push(global.rare_onyx_locales_effect_list,obj_trinket_vendor)

// Mythic onyx locales

global.mythic_onyx_locales_sprite_list = []
global.mythic_onyx_locales_art_list = []
global.mythic_onyx_locales_health_list = []
global.mythic_onyx_locales_channel_list = []
global.mythic_onyx_locales_effect_list = []

global.mythic_onyx_locales_list = [global.mythic_onyx_locales_sprite_list,global.mythic_onyx_locales_art_list,
global.mythic_onyx_locales_health_list, global.mythic_onyx_locales_channel_list, global.mythic_onyx_locales_effect_list]

// 0
array_push(global.mythic_onyx_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_onyx_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_onyx_locales_health_list,6)
array_push(global.mythic_onyx_locales_channel_list,3)
array_push(global.mythic_onyx_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_onyx_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_onyx_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_onyx_locales_health_list,6)
array_push(global.mythic_onyx_locales_channel_list,2)
array_push(global.mythic_onyx_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_onyx_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_onyx_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_onyx_locales_health_list,8)
array_push(global.mythic_onyx_locales_channel_list,3)
array_push(global.mythic_onyx_locales_effect_list,obj_mirror_prison)

// Legendary onyx locales

global.legendary_onyx_locales_sprite_list = []
global.legendary_onyx_locales_art_list = []
global.legendary_onyx_locales_health_list = []
global.legendary_onyx_locales_channel_list = []
global.legendary_onyx_locales_effect_list = []

global.legendary_onyx_locales_list = [global.legendary_onyx_locales_sprite_list,global.legendary_onyx_locales_art_list,
global.legendary_onyx_locales_health_list, global.legendary_onyx_locales_channel_list, global.legendary_onyx_locales_effect_list]

// 0
array_push(global.legendary_onyx_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_onyx_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_onyx_locales_health_list,6)
array_push(global.legendary_onyx_locales_channel_list,1)
array_push(global.legendary_onyx_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_onyx_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_onyx_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_onyx_locales_health_list,10)
array_push(global.legendary_onyx_locales_channel_list,5)
array_push(global.legendary_onyx_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_onyx_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_onyx_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_onyx_locales_health_list,6)
array_push(global.legendary_onyx_locales_channel_list,4)
array_push(global.legendary_onyx_locales_effect_list,obj_ravenmoor)

// onyx spells ============================================================================
// [0][2][1][0]  sprite = 0, art = 1, effect = 2

// Common onyx spells

global.common_onyx_spells_sprite_list = []
global.common_onyx_spells_art_list = []
global.common_onyx_spells_effect_list = []

global.common_onyx_spells_list = [global.common_onyx_spells_sprite_list,global.common_onyx_spells_art_list,global.common_onyx_spells_effect_list]

// 0 
array_push(global.common_onyx_spells_sprite_list,s_fanaticism)
array_push(global.common_onyx_spells_art_list,s_fanaticism_art)
array_push(global.common_onyx_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_onyx_spells_sprite_list,s_backstab)
array_push(global.common_onyx_spells_art_list,s_backstab_art)
array_push(global.common_onyx_spells_effect_list,obj_backstab)

// 2
array_push(global.common_onyx_spells_sprite_list,s_consumed)
array_push(global.common_onyx_spells_art_list,s_consumed_art)
array_push(global.common_onyx_spells_effect_list,obj_consumed)

// Uncommon onyx spells

global.uncommon_onyx_spells_sprite_list = []
global.uncommon_onyx_spells_art_list = []
global.uncommon_onyx_spells_effect_list = []

global.uncommon_onyx_spells_list = [global.uncommon_onyx_spells_sprite_list,global.uncommon_onyx_spells_art_list,global.uncommon_onyx_spells_effect_list]

// 0 
array_push(global.uncommon_onyx_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_onyx_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_onyx_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_onyx_spells_sprite_list,s_tithes)
array_push(global.uncommon_onyx_spells_art_list,s_tithes_art)
array_push(global.uncommon_onyx_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_onyx_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_onyx_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_onyx_spells_effect_list,obj_restoration_effort)

// Rare onyx spells

global.rare_onyx_spells_sprite_list = []
global.rare_onyx_spells_art_list = []
global.rare_onyx_spells_effect_list = []

global.rare_onyx_spells_list = [global.rare_onyx_spells_sprite_list,global.rare_onyx_spells_art_list,global.rare_onyx_spells_effect_list]

// 0 
array_push(global.rare_onyx_spells_sprite_list,s_mirrorspell)
array_push(global.rare_onyx_spells_art_list,s_mirrorspell_art)
array_push(global.rare_onyx_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_onyx_spells_sprite_list,s_subjugate)
array_push(global.rare_onyx_spells_art_list,s_subjugate_art)
array_push(global.rare_onyx_spells_effect_list,obj_subjugate)

// 2
array_push(global.rare_onyx_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_onyx_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_onyx_spells_effect_list,obj_vossen_ritual)

// Mythic onyx spells

global.mythic_onyx_spells_sprite_list = []
global.mythic_onyx_spells_art_list = []
global.mythic_onyx_spells_effect_list = []

global.mythic_onyx_spells_list = [global.mythic_onyx_spells_sprite_list,global.mythic_onyx_spells_art_list,global.mythic_onyx_spells_effect_list]

// 0 
array_push(global.mythic_onyx_spells_sprite_list,s_crumble)
array_push(global.mythic_onyx_spells_art_list,s_crumble_art)
array_push(global.mythic_onyx_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_onyx_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_onyx_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_onyx_spells_effect_list,obj_dark_reflection)

// 2
array_push(global.mythic_onyx_spells_sprite_list,s_excommunicate)
array_push(global.mythic_onyx_spells_art_list,s_excommunicate_art)
array_push(global.mythic_onyx_spells_effect_list,obj_excommunicate)

// Legendary onyx spells

global.legendary_onyx_spells_sprite_list = []
global.legendary_onyx_spells_art_list = []
global.legendary_onyx_spells_effect_list = []

global.legendary_onyx_spells_list = [global.legendary_onyx_spells_sprite_list,global.legendary_onyx_spells_art_list,global.legendary_onyx_spells_effect_list]

// 0 
array_push(global.legendary_onyx_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_onyx_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_onyx_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_onyx_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_onyx_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_onyx_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_onyx_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_onyx_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_onyx_spells_effect_list,obj_return_from_beyond)

//====================================================================================================================================

// sapphire locales ============================================================================
// [0][3][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common sapphire locales

global.common_sapphire_locales_sprite_list = []
global.common_sapphire_locales_art_list = []
global.common_sapphire_locales_health_list = []
global.common_sapphire_locales_channel_list = []
global.common_sapphire_locales_effect_list = []

global.common_sapphire_locales_list = [global.common_sapphire_locales_sprite_list,global.common_sapphire_locales_art_list,
global.common_sapphire_locales_health_list, global.common_sapphire_locales_channel_list, global.common_sapphire_locales_effect_list]

// 0
array_push(global.common_sapphire_locales_sprite_list,s_blustery_cliffside)
array_push(global.common_sapphire_locales_art_list,s_blustery_cliffside_art)
array_push(global.common_sapphire_locales_health_list,2)
array_push(global.common_sapphire_locales_channel_list,1)
array_push(global.common_sapphire_locales_effect_list,obj_blustery_cliffside)

// 1
array_push(global.common_sapphire_locales_sprite_list,s_calm_ocean)
array_push(global.common_sapphire_locales_art_list,s_calm_ocean_art)
array_push(global.common_sapphire_locales_health_list,1)
array_push(global.common_sapphire_locales_channel_list,1)
array_push(global.common_sapphire_locales_effect_list,obj_calm_ocean)

// 2
array_push(global.common_sapphire_locales_sprite_list,s_idyllic_beach)
array_push(global.common_sapphire_locales_art_list,s_idyllic_beach_art)
array_push(global.common_sapphire_locales_health_list,1)
array_push(global.common_sapphire_locales_channel_list,2)
array_push(global.common_sapphire_locales_effect_list,obj_decrepit_chapel)

// Uncommon sapphire locales

global.uncommon_sapphire_locales_sprite_list = []
global.uncommon_sapphire_locales_art_list = []
global.uncommon_sapphire_locales_health_list = []
global.uncommon_sapphire_locales_channel_list = []
global.uncommon_sapphire_locales_effect_list = []

global.uncommon_sapphire_locales_list = [global.uncommon_sapphire_locales_sprite_list,global.uncommon_sapphire_locales_art_list,
global.uncommon_sapphire_locales_health_list, global.uncommon_sapphire_locales_channel_list, global.uncommon_sapphire_locales_effect_list]

// 0
array_push(global.uncommon_sapphire_locales_sprite_list,s_floating_cascade)
array_push(global.uncommon_sapphire_locales_art_list,s_floating_cascade_art)
array_push(global.uncommon_sapphire_locales_health_list,1)
array_push(global.uncommon_sapphire_locales_channel_list,2)
array_push(global.uncommon_sapphire_locales_effect_list,obj_floating_cascade)

// 1
array_push(global.uncommon_sapphire_locales_sprite_list,s_erupting_reservoir)
array_push(global.uncommon_sapphire_locales_art_list,s_erupting_reservoir_art)
array_push(global.uncommon_sapphire_locales_health_list,1)
array_push(global.uncommon_sapphire_locales_channel_list,3)
array_push(global.uncommon_sapphire_locales_effect_list,obj_erupting_reservoir)

// 2
array_push(global.uncommon_sapphire_locales_sprite_list,s_turqoise_lagoon)
array_push(global.uncommon_sapphire_locales_art_list,s_turqoise_lagoon_art)
array_push(global.uncommon_sapphire_locales_health_list,2)
array_push(global.uncommon_sapphire_locales_channel_list,2)
array_push(global.uncommon_sapphire_locales_effect_list,obj_turqoise_lagoon)

// Rare sapphire locales

global.rare_sapphire_locales_sprite_list = []
global.rare_sapphire_locales_art_list = []
global.rare_sapphire_locales_health_list = []
global.rare_sapphire_locales_channel_list = []
global.rare_sapphire_locales_effect_list = []

global.rare_sapphire_locales_list = [global.rare_sapphire_locales_sprite_list,global.rare_sapphire_locales_art_list,
global.rare_sapphire_locales_health_list, global.rare_sapphire_locales_channel_list, global.rare_sapphire_locales_effect_list]

// 0
array_push(global.rare_sapphire_locales_sprite_list,s_wild_ocean)
array_push(global.rare_sapphire_locales_art_list,s_wild_ocean_art)
array_push(global.rare_sapphire_locales_health_list,2)
array_push(global.rare_sapphire_locales_channel_list,4)
array_push(global.rare_sapphire_locales_effect_list,obj_wild_ocean)

// 1
array_push(global.rare_sapphire_locales_sprite_list,s_aephiran_archipelago)
array_push(global.rare_sapphire_locales_art_list,s_aephiran_archipelago_art)
array_push(global.rare_sapphire_locales_health_list,5)
array_push(global.rare_sapphire_locales_channel_list,2)
array_push(global.rare_sapphire_locales_effect_list,obj_aephiran_archipelago)

// 2
array_push(global.rare_sapphire_locales_sprite_list,s_worlds_edge)
array_push(global.rare_sapphire_locales_art_list,s_worlds_edge_art)
array_push(global.rare_sapphire_locales_health_list,5)
array_push(global.rare_sapphire_locales_channel_list,3)
array_push(global.rare_sapphire_locales_effect_list,obj_worlds_edge)

// Mythic sapphire locales

global.mythic_sapphire_locales_sprite_list = []
global.mythic_sapphire_locales_art_list = []
global.mythic_sapphire_locales_health_list = []
global.mythic_sapphire_locales_channel_list = []
global.mythic_sapphire_locales_effect_list = []

global.mythic_sapphire_locales_list = [global.mythic_sapphire_locales_sprite_list,global.mythic_sapphire_locales_art_list,
global.mythic_sapphire_locales_health_list, global.mythic_sapphire_locales_channel_list, global.mythic_sapphire_locales_effect_list]

// 0
array_push(global.mythic_sapphire_locales_sprite_list,s_virellia_delta)
array_push(global.mythic_sapphire_locales_art_list,s_virellia_delta_art)
array_push(global.mythic_sapphire_locales_health_list,5)
array_push(global.mythic_sapphire_locales_channel_list,3)
array_push(global.mythic_sapphire_locales_effect_list,obj_virellia_delta)

// 1
array_push(global.mythic_sapphire_locales_sprite_list,s_aephira_falls)
array_push(global.mythic_sapphire_locales_art_list,s_aephira_falls_art)
array_push(global.mythic_sapphire_locales_health_list,3)
array_push(global.mythic_sapphire_locales_channel_list,4)
array_push(global.mythic_sapphire_locales_effect_list,obj_aephira_falls)

// 2
array_push(global.mythic_sapphire_locales_sprite_list,s_vaporizing_lake)
array_push(global.mythic_sapphire_locales_art_list,s_vaporizing_lake_art)
array_push(global.mythic_sapphire_locales_health_list,3)
array_push(global.mythic_sapphire_locales_channel_list,6)
array_push(global.mythic_sapphire_locales_effect_list,obj_vaporizing_lake)

// Legendary sapphire locales

global.legendary_sapphire_locales_sprite_list = []
global.legendary_sapphire_locales_art_list = []
global.legendary_sapphire_locales_health_list = []
global.legendary_sapphire_locales_channel_list = []
global.legendary_sapphire_locales_effect_list = []

global.legendary_sapphire_locales_list = [global.legendary_sapphire_locales_sprite_list,global.legendary_sapphire_locales_art_list,
global.legendary_sapphire_locales_health_list, global.legendary_sapphire_locales_channel_list, global.legendary_sapphire_locales_effect_list]

// 0
array_push(global.legendary_sapphire_locales_sprite_list,s_tempestuous_ocean)
array_push(global.legendary_sapphire_locales_art_list,s_tempestuous_ocean_art)
array_push(global.legendary_sapphire_locales_health_list,3)
array_push(global.legendary_sapphire_locales_channel_list,7)
array_push(global.legendary_sapphire_locales_effect_list,obj_tempestuous_ocean)

// 1
array_push(global.legendary_sapphire_locales_sprite_list,s_norvista)
array_push(global.legendary_sapphire_locales_art_list,s_norvista_art)
array_push(global.legendary_sapphire_locales_health_list,6)
array_push(global.legendary_sapphire_locales_channel_list,4)
array_push(global.legendary_sapphire_locales_effect_list,obj_norvista)

// 2
array_push(global.legendary_sapphire_locales_sprite_list,s_airtide)
array_push(global.legendary_sapphire_locales_art_list,s_airtide_art)
array_push(global.legendary_sapphire_locales_health_list,2)
array_push(global.legendary_sapphire_locales_channel_list,4)
array_push(global.legendary_sapphire_locales_effect_list,obj_airtide)

// 3
array_push(global.legendary_sapphire_locales_sprite_list,s_ripple_unbound)
array_push(global.legendary_sapphire_locales_art_list,s_ripple_unbound_art)
array_push(global.legendary_sapphire_locales_health_list,5)
array_push(global.legendary_sapphire_locales_channel_list,4)
array_push(global.legendary_sapphire_locales_effect_list,obj_ripple_unbound)

// sapphire spells ============================================================================
// [0][3][1][0]  sprite = 0, art = 1, effect = 2

// Common sapphire spells

global.common_sapphire_spells_sprite_list = []
global.common_sapphire_spells_art_list = []
global.common_sapphire_spells_effect_list = []

global.common_sapphire_spells_list = [global.common_sapphire_spells_sprite_list,global.common_sapphire_spells_art_list,global.common_sapphire_spells_effect_list]

// 0 
array_push(global.common_sapphire_spells_sprite_list,s_dampen)
array_push(global.common_sapphire_spells_art_list,s_dampen_art)
array_push(global.common_sapphire_spells_effect_list,obj_dampen)

// 1
array_push(global.common_sapphire_spells_sprite_list,s_essence_of_water)
array_push(global.common_sapphire_spells_art_list,s_essence_of_water_art)
array_push(global.common_sapphire_spells_effect_list,obj_essence_of_water)

// 2
array_push(global.common_sapphire_spells_sprite_list,s_southward_current)
array_push(global.common_sapphire_spells_art_list,s_southward_current_art)
array_push(global.common_sapphire_spells_effect_list,obj_southward_current)

// Uncommon sapphire spells

global.uncommon_sapphire_spells_sprite_list = []
global.uncommon_sapphire_spells_art_list = []
global.uncommon_sapphire_spells_effect_list = []

global.uncommon_sapphire_spells_list = [global.uncommon_sapphire_spells_sprite_list,global.uncommon_sapphire_spells_art_list,global.uncommon_sapphire_spells_effect_list]

// 0 
array_push(global.uncommon_sapphire_spells_sprite_list,aqueous_upheaval)
array_push(global.uncommon_sapphire_spells_art_list,aqueous_upheaval_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_aqueous_upheaval)

// 1
array_push(global.uncommon_sapphire_spells_sprite_list,s_skyborne_surge)
array_push(global.uncommon_sapphire_spells_art_list,s_skyborne_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_skyborne_surge)

// 2
array_push(global.uncommon_sapphire_spells_sprite_list,s_quenched_thirst)
array_push(global.uncommon_sapphire_spells_art_list,s_quenched_thirst_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_quenched_thirst)

// Rare sapphire spells

global.rare_sapphire_spells_sprite_list = []
global.rare_sapphire_spells_art_list = []
global.rare_sapphire_spells_effect_list = []

global.rare_sapphire_spells_list = [global.rare_sapphire_spells_sprite_list,global.rare_sapphire_spells_art_list,global.rare_sapphire_spells_effect_list]

// 0 
array_push(global.rare_sapphire_spells_sprite_list,s_norvista_trickery)
array_push(global.rare_sapphire_spells_art_list,s_norvista_trickery_art)
array_push(global.rare_sapphire_spells_effect_list,obj_norvista_trickery)

// 1
array_push(global.rare_sapphire_spells_sprite_list,s_intercepting_current)
array_push(global.rare_sapphire_spells_art_list,s_intercepting_current_art)
array_push(global.rare_sapphire_spells_effect_list,obj_intercepting_current)

// 2
array_push(global.rare_sapphire_spells_sprite_list,s_erratic_cloudburst)
array_push(global.rare_sapphire_spells_art_list,s_erratic_cloudburst_art)
array_push(global.rare_sapphire_spells_effect_list,obj_erratic_cloudburst)

// Mythic sapphire spells

global.mythic_sapphire_spells_sprite_list = []
global.mythic_sapphire_spells_art_list = []
global.mythic_sapphire_spells_effect_list = []

global.mythic_sapphire_spells_list = [global.mythic_sapphire_spells_sprite_list,global.mythic_sapphire_spells_art_list,global.mythic_sapphire_spells_effect_list]

// 0 
array_push(global.mythic_sapphire_spells_sprite_list,s_sudden_deluge)
array_push(global.mythic_sapphire_spells_art_list,s_sudden_deluge_art)
array_push(global.mythic_sapphire_spells_effect_list,obj_sudden_deluge)

// 1
array_push(global.mythic_sapphire_spells_sprite_list,s_norvistan_protection)
array_push(global.mythic_sapphire_spells_art_list,s_norvistan_protection_art)
array_push(global.mythic_sapphire_spells_effect_list,obj_norvistan_protection)

// 2
array_push(global.mythic_sapphire_spells_sprite_list,s_excommunicate)
array_push(global.mythic_sapphire_spells_art_list,s_excommunicate_art)
array_push(global.mythic_sapphire_spells_effect_list,obj_excommunicate)

// Legendary sapphire spells

global.legendary_sapphire_spells_sprite_list = []
global.legendary_sapphire_spells_art_list = []
global.legendary_sapphire_spells_effect_list = []

global.legendary_sapphire_spells_list = [global.legendary_sapphire_spells_sprite_list,global.legendary_sapphire_spells_art_list,global.legendary_sapphire_spells_effect_list]

// 0 
array_push(global.legendary_sapphire_spells_sprite_list,s_tsunami)
array_push(global.legendary_sapphire_spells_art_list,s_tsunami_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_tsunami)

// 1
array_push(global.legendary_sapphire_spells_sprite_list,s_displace)
array_push(global.legendary_sapphire_spells_art_list,s_displace_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_displace)

// 2
array_push(global.legendary_sapphire_spells_sprite_list,s_reality_ripples)
array_push(global.legendary_sapphire_spells_art_list,s_reality_ripples_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_reality_ripples)

//====================================================================================================================================

// emerald locales ============================================================================
// [0][4][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common emerald locales

global.common_emerald_locales_sprite_list = []
global.common_emerald_locales_art_list = []
global.common_emerald_locales_health_list = []
global.common_emerald_locales_channel_list = []
global.common_emerald_locales_effect_list = []

global.common_emerald_locales_list = [global.common_emerald_locales_sprite_list,global.common_emerald_locales_art_list,
global.common_emerald_locales_health_list, global.common_emerald_locales_channel_list, global.common_emerald_locales_effect_list]

// 0
array_push(global.common_emerald_locales_sprite_list,s_sun_drenched_clearing)
array_push(global.common_emerald_locales_art_list,s_sun_drenched_clearing_art)
array_push(global.common_emerald_locales_health_list,3)
array_push(global.common_emerald_locales_channel_list,1)
array_push(global.common_emerald_locales_effect_list,obj_sun_drenched_clearing)

// 1
array_push(global.common_emerald_locales_sprite_list,s_expanding_forest)
array_push(global.common_emerald_locales_art_list,s_expanding_forest_art)
array_push(global.common_emerald_locales_health_list,1)
array_push(global.common_emerald_locales_channel_list,1)
array_push(global.common_emerald_locales_effect_list,obj_expanding_forest)

// 2
array_push(global.common_emerald_locales_sprite_list,s_leafy_village)
array_push(global.common_emerald_locales_art_list,s_leafy_village_art)
array_push(global.common_emerald_locales_health_list,3)
array_push(global.common_emerald_locales_channel_list,2)
array_push(global.common_emerald_locales_effect_list,obj_leafy_village)

// Uncommon emerald locales

global.uncommon_emerald_locales_sprite_list = []
global.uncommon_emerald_locales_art_list = []
global.uncommon_emerald_locales_health_list = []
global.uncommon_emerald_locales_channel_list = []
global.uncommon_emerald_locales_effect_list = []

global.uncommon_emerald_locales_list = [global.uncommon_emerald_locales_sprite_list,global.uncommon_emerald_locales_art_list,
global.uncommon_emerald_locales_health_list, global.uncommon_emerald_locales_channel_list, global.uncommon_emerald_locales_effect_list]

// 0
array_push(global.uncommon_emerald_locales_sprite_list,s_seedspreader)
array_push(global.uncommon_emerald_locales_art_list,s_seedspreader_art)
array_push(global.uncommon_emerald_locales_health_list,2)
array_push(global.uncommon_emerald_locales_channel_list,3)
array_push(global.uncommon_emerald_locales_effect_list,obj_seedspreader)

// 1
array_push(global.uncommon_emerald_locales_sprite_list,s_mangrove_thicket)
array_push(global.uncommon_emerald_locales_art_list,s_mangrove_thicket_art)
array_push(global.uncommon_emerald_locales_health_list,3)
array_push(global.uncommon_emerald_locales_channel_list,3)
array_push(global.uncommon_emerald_locales_effect_list,obj_mangrove_thicket)

// 2
array_push(global.uncommon_emerald_locales_sprite_list,s_towering_vegetation)
array_push(global.uncommon_emerald_locales_art_list,s_towering_vegetation_art)
array_push(global.uncommon_emerald_locales_health_list,2)
array_push(global.uncommon_emerald_locales_channel_list,1)
array_push(global.uncommon_emerald_locales_effect_list,obj_towering_vegetation)

// Rare emerald locales

global.rare_emerald_locales_sprite_list = []
global.rare_emerald_locales_art_list = []
global.rare_emerald_locales_health_list = []
global.rare_emerald_locales_channel_list = []
global.rare_emerald_locales_effect_list = []

global.rare_emerald_locales_list = [global.rare_emerald_locales_sprite_list,global.rare_emerald_locales_art_list,
global.rare_emerald_locales_health_list, global.rare_emerald_locales_channel_list, global.rare_emerald_locales_effect_list]

// 0
array_push(global.rare_emerald_locales_sprite_list,s_vine_choked_crevice)
array_push(global.rare_emerald_locales_art_list,s_vine_choked_crevice_art)
array_push(global.rare_emerald_locales_health_list,1)
array_push(global.rare_emerald_locales_channel_list,1)
array_push(global.rare_emerald_locales_effect_list,obj_vine_choked_crevice)

// 1
array_push(global.rare_emerald_locales_sprite_list,s_hazy_woods)
array_push(global.rare_emerald_locales_art_list,s_hazy_woods_art)
array_push(global.rare_emerald_locales_health_list,5)
array_push(global.rare_emerald_locales_channel_list,5)
array_push(global.rare_emerald_locales_effect_list,obj_hazy_woods)

// 2
array_push(global.rare_emerald_locales_sprite_list,s_emerald_wellspring)
array_push(global.rare_emerald_locales_art_list,s_emerald_wellspring_art)
array_push(global.rare_emerald_locales_health_list,3)
array_push(global.rare_emerald_locales_channel_list,2)
array_push(global.rare_emerald_locales_effect_list,obj_emerald_wellspring)

// Mythic emerald locales

global.mythic_emerald_locales_sprite_list = []
global.mythic_emerald_locales_art_list = []
global.mythic_emerald_locales_health_list = []
global.mythic_emerald_locales_channel_list = []
global.mythic_emerald_locales_effect_list = []

global.mythic_emerald_locales_list = [global.mythic_emerald_locales_sprite_list,global.mythic_emerald_locales_art_list,
global.mythic_emerald_locales_health_list, global.mythic_emerald_locales_channel_list, global.mythic_emerald_locales_effect_list]

// 0
array_push(global.mythic_emerald_locales_sprite_list,s_omnitree)
array_push(global.mythic_emerald_locales_art_list,s_omnitree_art)
array_push(global.mythic_emerald_locales_health_list,6)
array_push(global.mythic_emerald_locales_channel_list,2)
array_push(global.mythic_emerald_locales_effect_list,obj_omnitree)

// 1
array_push(global.mythic_emerald_locales_sprite_list,s_wayglade)
array_push(global.mythic_emerald_locales_art_list,s_wayglade_art)
array_push(global.mythic_emerald_locales_health_list,3)
array_push(global.mythic_emerald_locales_channel_list,2)
array_push(global.mythic_emerald_locales_effect_list,obj_wayglade)

// 2
array_push(global.mythic_emerald_locales_sprite_list,s_valley_of_thorns)
array_push(global.mythic_emerald_locales_art_list,s_valley_of_thorns_art)
array_push(global.mythic_emerald_locales_health_list,7)
array_push(global.mythic_emerald_locales_channel_list,6)
array_push(global.mythic_emerald_locales_effect_list,obj_valley_of_thorns)

// Legendary emerald locales

global.legendary_emerald_locales_sprite_list = []
global.legendary_emerald_locales_art_list = []
global.legendary_emerald_locales_health_list = []
global.legendary_emerald_locales_channel_list = []
global.legendary_emerald_locales_effect_list = []

global.legendary_emerald_locales_list = [global.legendary_emerald_locales_sprite_list,global.legendary_emerald_locales_art_list,
global.legendary_emerald_locales_health_list, global.legendary_emerald_locales_channel_list, global.legendary_emerald_locales_effect_list]

// 0
array_push(global.legendary_emerald_locales_sprite_list,s_burgeoning_seed)
array_push(global.legendary_emerald_locales_art_list,s_burgeoning_seed_art)
array_push(global.legendary_emerald_locales_health_list,2)
array_push(global.legendary_emerald_locales_channel_list,1)
array_push(global.legendary_emerald_locales_effect_list,obj_burgeoning_seed)

// 1
array_push(global.legendary_emerald_locales_sprite_list,s_path_of_vitality)
array_push(global.legendary_emerald_locales_art_list,s_path_of_vitality_art)
array_push(global.legendary_emerald_locales_health_list,7)
array_push(global.legendary_emerald_locales_channel_list,1)
array_push(global.legendary_emerald_locales_effect_list,obj_path_of_vitality)

// 2
array_push(global.legendary_emerald_locales_sprite_list,s_keyroot_caverns)
array_push(global.legendary_emerald_locales_art_list,s_keyroot_caverns_art)
array_push(global.legendary_emerald_locales_health_list,4)
array_push(global.legendary_emerald_locales_channel_list,7)
array_push(global.legendary_emerald_locales_effect_list,obj_keyroot_caverns)

// emerald spells ============================================================================
// [0][4][1][0]  sprite = 0, art = 1, effect = 2

// Common emerald spells

global.common_emerald_spells_sprite_list = []
global.common_emerald_spells_art_list = []
global.common_emerald_spells_effect_list = []

global.common_emerald_spells_list = [global.common_emerald_spells_sprite_list,global.common_emerald_spells_art_list,global.common_emerald_spells_effect_list]

// 0 
array_push(global.common_emerald_spells_sprite_list,s_decompose)
array_push(global.common_emerald_spells_art_list,s_decompose_art)
array_push(global.common_emerald_spells_effect_list,obj_decompose)

// 1
array_push(global.common_emerald_spells_sprite_list,s_touch_omnitree)
array_push(global.common_emerald_spells_art_list,s_touch_omnitree_art)
array_push(global.common_emerald_spells_effect_list,obj_touch_omnitree)

// 2
array_push(global.common_emerald_spells_sprite_list,s_vine_wall)
array_push(global.common_emerald_spells_art_list,s_vine_wall_art)
array_push(global.common_emerald_spells_effect_list,obj_vine_wall)

// Uncommon emerald spells

global.uncommon_emerald_spells_sprite_list = []
global.uncommon_emerald_spells_art_list = []
global.uncommon_emerald_spells_effect_list = []

global.uncommon_emerald_spells_list = [global.uncommon_emerald_spells_sprite_list,global.uncommon_emerald_spells_art_list,global.uncommon_emerald_spells_effect_list]

// 0 
array_push(global.uncommon_emerald_spells_sprite_list,s_branching_trails)
array_push(global.uncommon_emerald_spells_art_list,s_branching_trails_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_branching_trails)

// 1
array_push(global.uncommon_emerald_spells_sprite_list,s_enlarge)
array_push(global.uncommon_emerald_spells_art_list,s_enlarge_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_enlarge)

// 2
array_push(global.uncommon_emerald_spells_sprite_list,s_mighty_attraction)
array_push(global.uncommon_emerald_spells_art_list,s_mighty_attraction_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_mighty_attraction)

// Rare emerald spells

global.rare_emerald_spells_sprite_list = []
global.rare_emerald_spells_art_list = []
global.rare_emerald_spells_effect_list = []

global.rare_emerald_spells_list = [global.rare_emerald_spells_sprite_list,global.rare_emerald_spells_art_list,global.rare_emerald_spells_effect_list]

// 0 
array_push(global.rare_emerald_spells_sprite_list,s_reconstruct)
array_push(global.rare_emerald_spells_art_list,s_reconstruct_art)
array_push(global.rare_emerald_spells_effect_list,obj_reconstruct)

// 1
array_push(global.rare_emerald_spells_sprite_list,s_disorient)
array_push(global.rare_emerald_spells_art_list,s_disorient_art)
array_push(global.rare_emerald_spells_effect_list,obj_disorient)

// 2
array_push(global.rare_emerald_spells_sprite_list,s_latticework_roots)
array_push(global.rare_emerald_spells_art_list,s_latticework_roots_art)
array_push(global.rare_emerald_spells_effect_list,obj_latticework_roots)

// Mythic emerald spells

global.mythic_emerald_spells_sprite_list = []
global.mythic_emerald_spells_art_list = []
global.mythic_emerald_spells_effect_list = []

global.mythic_emerald_spells_list = [global.mythic_emerald_spells_sprite_list,global.mythic_emerald_spells_art_list,global.mythic_emerald_spells_effect_list]

// 0 
array_push(global.mythic_emerald_spells_sprite_list,s_overgrow)
array_push(global.mythic_emerald_spells_art_list,s_overgrow_art)
array_push(global.mythic_emerald_spells_effect_list,obj_overgrow)

// 1
array_push(global.mythic_emerald_spells_sprite_list,s_verdant_repression)
array_push(global.mythic_emerald_spells_art_list,s_verdant_repression_art)
array_push(global.mythic_emerald_spells_effect_list,obj_verdant_repression)

// 2
array_push(global.mythic_emerald_spells_sprite_list,s_one_earth)
array_push(global.mythic_emerald_spells_art_list,s_one_earth_art)
array_push(global.mythic_emerald_spells_effect_list,obj_one_earth)

// Legendary emerald spells

global.legendary_emerald_spells_sprite_list = []
global.legendary_emerald_spells_art_list = []
global.legendary_emerald_spells_effect_list = []

global.legendary_emerald_spells_list = [global.legendary_emerald_spells_sprite_list,global.legendary_emerald_spells_art_list,global.legendary_emerald_spells_effect_list]

// 0 
array_push(global.legendary_emerald_spells_sprite_list,s_engulf)
array_push(global.legendary_emerald_spells_art_list,s_engulf_art)
array_push(global.legendary_emerald_spells_effect_list,obj_engulf)

// 1
array_push(global.legendary_emerald_spells_sprite_list,s_ensnare)
array_push(global.legendary_emerald_spells_art_list,s_ensnare_art)
array_push(global.legendary_emerald_spells_effect_list,obj_ensnare)

// 2
array_push(global.legendary_emerald_spells_sprite_list,s_earthflux)
array_push(global.legendary_emerald_spells_art_list,s_earthflux_art)
array_push(global.legendary_emerald_spells_effect_list,obj_earthflux)

//====================================================================================================================================

// citrine locales ============================================================================
// [0][5][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common citrine locales

global.common_citrine_locales_sprite_list = []
global.common_citrine_locales_art_list = []
global.common_citrine_locales_health_list = []
global.common_citrine_locales_channel_list = []
global.common_citrine_locales_effect_list = []

global.common_citrine_locales_list = [global.common_citrine_locales_sprite_list,global.common_citrine_locales_art_list,
global.common_citrine_locales_health_list, global.common_citrine_locales_channel_list, global.common_citrine_locales_effect_list]

// 0
array_push(global.common_citrine_locales_sprite_list,s_dusty_pass)
array_push(global.common_citrine_locales_art_list,s_dusty_pass_art)
array_push(global.common_citrine_locales_health_list,1)
array_push(global.common_citrine_locales_channel_list,1)
array_push(global.common_citrine_locales_effect_list,obj_dusty_pass)

// 1
array_push(global.common_citrine_locales_sprite_list,s_sweltering_savannah)
array_push(global.common_citrine_locales_art_list,s_sweltering_savannah_art)
array_push(global.common_citrine_locales_health_list,1)
array_push(global.common_citrine_locales_channel_list,2)
array_push(global.common_citrine_locales_effect_list,obj_sweltering_savannah)

// 2
array_push(global.common_citrine_locales_sprite_list,s_windswept_steppe)
array_push(global.common_citrine_locales_art_list,s_windswept_steppe_art)
array_push(global.common_citrine_locales_health_list,2)
array_push(global.common_citrine_locales_channel_list,0)
array_push(global.common_citrine_locales_effect_list,obj_windswept_steppe)

// Uncommon citrine locales

global.uncommon_citrine_locales_sprite_list = []
global.uncommon_citrine_locales_art_list = []
global.uncommon_citrine_locales_health_list = []
global.uncommon_citrine_locales_channel_list = []
global.uncommon_citrine_locales_effect_list = []

global.uncommon_citrine_locales_list = [global.uncommon_citrine_locales_sprite_list,global.uncommon_citrine_locales_art_list,
global.uncommon_citrine_locales_health_list, global.uncommon_citrine_locales_channel_list, global.uncommon_citrine_locales_effect_list]

// 0
array_push(global.uncommon_citrine_locales_sprite_list,s_timetailor_village)
array_push(global.uncommon_citrine_locales_art_list,s_timetailor_village_art)
array_push(global.uncommon_citrine_locales_health_list,4)
array_push(global.uncommon_citrine_locales_channel_list,1)
array_push(global.uncommon_citrine_locales_effect_list,obj_timetailor_village)

// 1
array_push(global.uncommon_citrine_locales_sprite_list,s_howling_tunnels)
array_push(global.uncommon_citrine_locales_art_list,s_howling_tunnels_art)
array_push(global.uncommon_citrine_locales_health_list,1)
array_push(global.uncommon_citrine_locales_channel_list,1)
array_push(global.uncommon_citrine_locales_effect_list,obj_howling_tunnels)

// 2
array_push(global.uncommon_citrine_locales_sprite_list,s_inhospitable_valley)
array_push(global.uncommon_citrine_locales_art_list,s_inhospitable_valley_art)
array_push(global.uncommon_citrine_locales_health_list,2)
array_push(global.uncommon_citrine_locales_channel_list,3)
array_push(global.uncommon_citrine_locales_effect_list,obj_inhospitable_valley)

// Rare citrine locales

global.rare_citrine_locales_sprite_list = []
global.rare_citrine_locales_art_list = []
global.rare_citrine_locales_health_list = []
global.rare_citrine_locales_channel_list = []
global.rare_citrine_locales_effect_list = []

global.rare_citrine_locales_list = [global.rare_citrine_locales_sprite_list,global.rare_citrine_locales_art_list,
global.rare_citrine_locales_health_list, global.rare_citrine_locales_channel_list, global.rare_citrine_locales_effect_list]

// 0
array_push(global.rare_citrine_locales_sprite_list,s_mireth_badlands)
array_push(global.rare_citrine_locales_art_list,s_mireth_badlands_art)
array_push(global.rare_citrine_locales_health_list,3)
array_push(global.rare_citrine_locales_channel_list,1)
array_push(global.rare_citrine_locales_effect_list,obj_mireth_badlands)

// 1
array_push(global.rare_citrine_locales_sprite_list,s_mirage_passageway)
array_push(global.rare_citrine_locales_art_list,s_mirage_passageway_art)
array_push(global.rare_citrine_locales_health_list,5)
array_push(global.rare_citrine_locales_channel_list,2)
array_push(global.rare_citrine_locales_effect_list,obj_mirage_passageway)

// 2
array_push(global.rare_citrine_locales_sprite_list,s_virellia_battlerange)
array_push(global.rare_citrine_locales_art_list,s_virellia_battlerange_art)
array_push(global.rare_citrine_locales_health_list,3)
array_push(global.rare_citrine_locales_channel_list,3)
array_push(global.rare_citrine_locales_effect_list,obj_virellia_battlerange)

// Mythic citrine locales

global.mythic_citrine_locales_sprite_list = []
global.mythic_citrine_locales_art_list = []
global.mythic_citrine_locales_health_list = []
global.mythic_citrine_locales_channel_list = []
global.mythic_citrine_locales_effect_list = []

global.mythic_citrine_locales_list = [global.mythic_citrine_locales_sprite_list,global.mythic_citrine_locales_art_list,
global.mythic_citrine_locales_health_list, global.mythic_citrine_locales_channel_list, global.mythic_citrine_locales_effect_list]

// 0
array_push(global.mythic_citrine_locales_sprite_list,s_timetailor_circle)
array_push(global.mythic_citrine_locales_art_list,s_timetailor_circle_art)
array_push(global.mythic_citrine_locales_health_list,2)
array_push(global.mythic_citrine_locales_channel_list,3)
array_push(global.mythic_citrine_locales_effect_list,obj_timetailor_circle)

// 1
array_push(global.mythic_citrine_locales_sprite_list,s_mindsapping_dunes)
array_push(global.mythic_citrine_locales_art_list,s_mindsapping_dunes_art)
array_push(global.mythic_citrine_locales_health_list,4)
array_push(global.mythic_citrine_locales_channel_list,2)
array_push(global.mythic_citrine_locales_effect_list,obj_mindsapping_dunes)

// 2
array_push(global.mythic_citrine_locales_sprite_list,s_escalating_sandstorm)
array_push(global.mythic_citrine_locales_art_list,s_escalating_sandstorm_art)
array_push(global.mythic_citrine_locales_health_list,7)
array_push(global.mythic_citrine_locales_channel_list,1)
array_push(global.mythic_citrine_locales_effect_list,obj_escalating_sandstorm)

// Legendary citrine locales

global.legendary_citrine_locales_sprite_list = []
global.legendary_citrine_locales_art_list = []
global.legendary_citrine_locales_health_list = []
global.legendary_citrine_locales_channel_list = []
global.legendary_citrine_locales_effect_list = []

global.legendary_citrine_locales_list = [global.legendary_citrine_locales_sprite_list,global.legendary_citrine_locales_art_list,
global.legendary_citrine_locales_health_list, global.legendary_citrine_locales_channel_list, global.legendary_citrine_locales_effect_list]

// 0
array_push(global.legendary_citrine_locales_sprite_list,s_gale_out_of_time)
array_push(global.legendary_citrine_locales_art_list,s_gale_out_of_time_art)
array_push(global.legendary_citrine_locales_health_list,6)
array_push(global.legendary_citrine_locales_channel_list,4)
array_push(global.legendary_citrine_locales_effect_list,obj_gale_out_of_time)

// 1
array_push(global.legendary_citrine_locales_sprite_list,s_veirypher)
array_push(global.legendary_citrine_locales_art_list,s_veirypher_art)
array_push(global.legendary_citrine_locales_health_list,2)
array_push(global.legendary_citrine_locales_channel_list,4)
array_push(global.legendary_citrine_locales_effect_list,obj_veirypher)

// 2
array_push(global.legendary_citrine_locales_sprite_list,s_mirage_library)
array_push(global.legendary_citrine_locales_art_list,s_mirage_library_art)
array_push(global.legendary_citrine_locales_health_list,6)
array_push(global.legendary_citrine_locales_channel_list,2)
array_push(global.legendary_citrine_locales_effect_list,obj_mirage_library)

// citrine spells ============================================================================
// [0][5][1][0]  sprite = 0, art = 1, effect = 2

// Common citrine spells

global.common_citrine_spells_sprite_list = []
global.common_citrine_spells_art_list = []
global.common_citrine_spells_effect_list = []

global.common_citrine_spells_list = [global.common_citrine_spells_sprite_list,global.common_citrine_spells_art_list,global.common_citrine_spells_effect_list]

// 0 
array_push(global.common_citrine_spells_sprite_list,s_grasp_at_nothing)
array_push(global.common_citrine_spells_art_list,s_grasp_at_nothing_art)
array_push(global.common_citrine_spells_effect_list,obj_grasp_at_nothing)

// 1
array_push(global.common_citrine_spells_sprite_list,s_passage_of_time)
array_push(global.common_citrine_spells_art_list,s_passage_of_time_art)
array_push(global.common_citrine_spells_effect_list,obj_passage_of_time)

// 2
array_push(global.common_citrine_spells_sprite_list,s_outwit)
array_push(global.common_citrine_spells_art_list,s_outwit_art)
array_push(global.common_citrine_spells_effect_list,obj_outwit)

// Uncommon citrine spells

global.uncommon_citrine_spells_sprite_list = []
global.uncommon_citrine_spells_art_list = []
global.uncommon_citrine_spells_effect_list = []

global.uncommon_citrine_spells_list = [global.uncommon_citrine_spells_sprite_list,global.uncommon_citrine_spells_art_list,global.uncommon_citrine_spells_effect_list]

// 0 
array_push(global.uncommon_citrine_spells_sprite_list,s_windwalk)
array_push(global.uncommon_citrine_spells_art_list,s_windwalk_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_windwalk)

// 1
array_push(global.uncommon_citrine_spells_sprite_list,s_uncovered_tome)
array_push(global.uncommon_citrine_spells_art_list,s_uncovered_tome_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_uncovered_tome)

// 2
array_push(global.uncommon_citrine_spells_sprite_list,s_crushing_thirst)
array_push(global.uncommon_citrine_spells_art_list,s_crushing_thirst_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_crushing_thirst)

// Rare citrine spells

global.rare_citrine_spells_sprite_list = []
global.rare_citrine_spells_art_list = []
global.rare_citrine_spells_effect_list = []

global.rare_citrine_spells_list = [global.rare_citrine_spells_sprite_list,global.rare_citrine_spells_art_list,global.rare_citrine_spells_effect_list]

// 0 
array_push(global.rare_citrine_spells_sprite_list,s_into_the_gale)
array_push(global.rare_citrine_spells_art_list,s_into_the_gale_art)
array_push(global.rare_citrine_spells_effect_list,obj_into_the_gale)

// 1
array_push(global.rare_citrine_spells_sprite_list,s_erode)
array_push(global.rare_citrine_spells_art_list,s_erode_art)
array_push(global.rare_citrine_spells_effect_list,obj_erode)

// 2
array_push(global.rare_citrine_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_citrine_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_citrine_spells_effect_list,obj_vossen_ritual)

// Mythic citrine spells

global.mythic_citrine_spells_sprite_list = []
global.mythic_citrine_spells_art_list = []
global.mythic_citrine_spells_effect_list = []

global.mythic_citrine_spells_list = [global.mythic_citrine_spells_sprite_list,global.mythic_citrine_spells_art_list,global.mythic_citrine_spells_effect_list]

// 0 
array_push(global.mythic_citrine_spells_sprite_list,s_citromorphosis)
array_push(global.mythic_citrine_spells_art_list,s_citromorphosis_art)
array_push(global.mythic_citrine_spells_effect_list,obj_citromorphosis)

// 1
array_push(global.mythic_citrine_spells_sprite_list,s_accelerate)
array_push(global.mythic_citrine_spells_art_list,s_accelerate_art)
array_push(global.mythic_citrine_spells_effect_list,obj_accelerate)

// 2
array_push(global.mythic_citrine_spells_sprite_list,s_height_of_the_tempest)
array_push(global.mythic_citrine_spells_art_list,s_height_of_the_tempest_art)
array_push(global.mythic_citrine_spells_effect_list,obj_height_of_the_tempest)

// Legendary citrine spells

global.legendary_citrine_spells_sprite_list = []
global.legendary_citrine_spells_art_list = []
global.legendary_citrine_spells_effect_list = []

global.legendary_citrine_spells_list = [global.legendary_citrine_spells_sprite_list,global.legendary_citrine_spells_art_list,global.legendary_citrine_spells_effect_list]

// 0 
array_push(global.legendary_citrine_spells_sprite_list,s_carress_of_the_gale)
array_push(global.legendary_citrine_spells_art_list,s_carress_of_the_gale_art)
array_push(global.legendary_citrine_spells_effect_list,obj_carress_of_the_gale)

// 1
array_push(global.legendary_citrine_spells_sprite_list,s_endless_debate)
array_push(global.legendary_citrine_spells_art_list,s_endless_debate_art)
array_push(global.legendary_citrine_spells_effect_list,obj_endless_debate)

// 2
array_push(global.legendary_citrine_spells_sprite_list,s_mind_palace)
array_push(global.legendary_citrine_spells_art_list,s_mind_palace_art)
array_push(global.legendary_citrine_spells_effect_list,obj_mind_palace)

//====================================================================================================================================

// opal locales ============================================================================
// [0][6][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common opal locales

global.common_opal_locales_sprite_list = []
global.common_opal_locales_art_list = []
global.common_opal_locales_health_list = []
global.common_opal_locales_channel_list = []
global.common_opal_locales_effect_list = []

global.common_opal_locales_list = [global.common_opal_locales_sprite_list,global.common_opal_locales_art_list,
global.common_opal_locales_health_list, global.common_opal_locales_channel_list, global.common_opal_locales_effect_list]

// 0
array_push(global.common_opal_locales_sprite_list,s_wrecked_workshop)
array_push(global.common_opal_locales_art_list,s_wrecked_workshop_art)
array_push(global.common_opal_locales_health_list,2)
array_push(global.common_opal_locales_channel_list,1)
array_push(global.common_opal_locales_effect_list,obj_wrecked_workshop)

// 1
array_push(global.common_opal_locales_sprite_list,s_curio_boutique)
array_push(global.common_opal_locales_art_list,s_curio_boutique_art)
array_push(global.common_opal_locales_health_list,1)
array_push(global.common_opal_locales_channel_list,1)
array_push(global.common_opal_locales_effect_list,obj_curio_boutique)

// 2
array_push(global.common_opal_locales_sprite_list,s_silver_prairie)
array_push(global.common_opal_locales_art_list,s_silver_prairie_art)
array_push(global.common_opal_locales_health_list,3)
array_push(global.common_opal_locales_channel_list,0)
array_push(global.common_opal_locales_effect_list,obj_silver_prairie)

// Uncommon opal locales

global.uncommon_opal_locales_sprite_list = []
global.uncommon_opal_locales_art_list = []
global.uncommon_opal_locales_health_list = []
global.uncommon_opal_locales_channel_list = []
global.uncommon_opal_locales_effect_list = []

global.uncommon_opal_locales_list = [global.uncommon_opal_locales_sprite_list,global.uncommon_opal_locales_art_list,
global.uncommon_opal_locales_health_list, global.uncommon_opal_locales_channel_list, global.uncommon_opal_locales_effect_list]

// 0
array_push(global.uncommon_opal_locales_sprite_list,s_corcia_lab)
array_push(global.uncommon_opal_locales_art_list,s_corcia_lab_art)
array_push(global.uncommon_opal_locales_health_list,3)
array_push(global.uncommon_opal_locales_channel_list,2)
array_push(global.uncommon_opal_locales_effect_list,obj_corcia_lab)

// 1
array_push(global.uncommon_opal_locales_sprite_list,s_underground_goldvein)
array_push(global.uncommon_opal_locales_art_list,s_underground_goldvein_art)
array_push(global.uncommon_opal_locales_health_list,4)
array_push(global.uncommon_opal_locales_channel_list,0)
array_push(global.uncommon_opal_locales_effect_list,obj_underground_goldvein)

// 2
array_push(global.uncommon_opal_locales_sprite_list,s_lightning_deposit)
array_push(global.uncommon_opal_locales_art_list,s_lightning_deposit_art)
array_push(global.uncommon_opal_locales_health_list,3)
array_push(global.uncommon_opal_locales_channel_list,1)
array_push(global.uncommon_opal_locales_effect_list,obj_lightning_deposit)

// Rare opal locales

global.rare_opal_locales_sprite_list = []
global.rare_opal_locales_art_list = []
global.rare_opal_locales_health_list = []
global.rare_opal_locales_channel_list = []
global.rare_opal_locales_effect_list = []

global.rare_opal_locales_list = [global.rare_opal_locales_sprite_list,global.rare_opal_locales_art_list,
global.rare_opal_locales_health_list, global.rare_opal_locales_channel_list, global.rare_opal_locales_effect_list]

// 0
array_push(global.rare_opal_locales_sprite_list,s_corcia_balcony)
array_push(global.rare_opal_locales_art_list,s_corcia_balcony_art)
array_push(global.rare_opal_locales_health_list,3)
array_push(global.rare_opal_locales_channel_list,3)
array_push(global.rare_opal_locales_effect_list,obj_corcia_balcony)

// 1
array_push(global.rare_opal_locales_sprite_list,s_aephira_trove)
array_push(global.rare_opal_locales_art_list,s_aephira_trove_art)
array_push(global.rare_opal_locales_health_list,3)
array_push(global.rare_opal_locales_channel_list,3)
array_push(global.rare_opal_locales_effect_list,obj_aephira_trove)

// 2
array_push(global.rare_opal_locales_sprite_list,s_delgar_stormclouds)
array_push(global.rare_opal_locales_art_list,s_delgar_stormclouds_art)
array_push(global.rare_opal_locales_health_list,2)
array_push(global.rare_opal_locales_channel_list,5)
array_push(global.rare_opal_locales_effect_list,obj_delgar_stormclouds)

// Mythic opal locales

global.mythic_opal_locales_sprite_list = []
global.mythic_opal_locales_art_list = []
global.mythic_opal_locales_health_list = []
global.mythic_opal_locales_channel_list = []
global.mythic_opal_locales_effect_list = []

global.mythic_opal_locales_list = [global.mythic_opal_locales_sprite_list,global.mythic_opal_locales_art_list,
global.mythic_opal_locales_health_list, global.mythic_opal_locales_channel_list, global.mythic_opal_locales_effect_list]

// 0
array_push(global.mythic_opal_locales_sprite_list,s_elzarc_forum)
array_push(global.mythic_opal_locales_art_list,s_elzarc_forum_art)
array_push(global.mythic_opal_locales_health_list,7)
array_push(global.mythic_opal_locales_channel_list,3)
array_push(global.mythic_opal_locales_effect_list,obj_elzarc_forum)

// 1
array_push(global.mythic_opal_locales_sprite_list,s_amphracell_factory)
array_push(global.mythic_opal_locales_art_list,s_amphracell_factory_art)
array_push(global.mythic_opal_locales_health_list,5)
array_push(global.mythic_opal_locales_channel_list,3)
array_push(global.mythic_opal_locales_effect_list,obj_amphracell_factory)

// 2
array_push(global.mythic_opal_locales_sprite_list,s_elzarc_consortium)
array_push(global.mythic_opal_locales_art_list,s_elzarc_consortium_art)
array_push(global.mythic_opal_locales_health_list,4)
array_push(global.mythic_opal_locales_channel_list,5)
array_push(global.mythic_opal_locales_effect_list,obj_elzarc_consortium)

// Legendary opal locales

global.legendary_opal_locales_sprite_list = []
global.legendary_opal_locales_art_list = []
global.legendary_opal_locales_health_list = []
global.legendary_opal_locales_channel_list = []
global.legendary_opal_locales_effect_list = []

global.legendary_opal_locales_list = [global.legendary_opal_locales_sprite_list,global.legendary_opal_locales_art_list,
global.legendary_opal_locales_health_list, global.legendary_opal_locales_channel_list, global.legendary_opal_locales_effect_list]

// 0
array_push(global.legendary_opal_locales_sprite_list,s_crackling_prism)
array_push(global.legendary_opal_locales_art_list,s_crackling_prism_art)
array_push(global.legendary_opal_locales_health_list,11)
array_push(global.legendary_opal_locales_channel_list,4)
array_push(global.legendary_opal_locales_effect_list,obj_crackling_prism)

// 1
array_push(global.legendary_opal_locales_sprite_list,s_corcia_spire)
array_push(global.legendary_opal_locales_art_list,s_corcia_spire_art)
array_push(global.legendary_opal_locales_health_list,9)
array_push(global.legendary_opal_locales_channel_list,6)
array_push(global.legendary_opal_locales_effect_list,obj_corcia_spire)

// 2
array_push(global.legendary_opal_locales_sprite_list,s_secret_amphrachart)
array_push(global.legendary_opal_locales_art_list,s_secret_amphrachart_art)
array_push(global.legendary_opal_locales_health_list,1)
array_push(global.legendary_opal_locales_channel_list,7)
array_push(global.legendary_opal_locales_effect_list,obj_secret_amphrachart)

// opal spells ============================================================================
// [0][6][1][0]  sprite = 0, art = 1, effect = 2

// Common opal spells

global.common_opal_spells_sprite_list = []
global.common_opal_spells_art_list = []
global.common_opal_spells_effect_list = []

global.common_opal_spells_list = [global.common_opal_spells_sprite_list,global.common_opal_spells_art_list,global.common_opal_spells_effect_list]

// 0 
array_push(global.common_opal_spells_sprite_list,s_corcian_compass)
array_push(global.common_opal_spells_art_list,s_corcian_compass_art)
array_push(global.common_opal_spells_effect_list,obj_corcian_compass)

// 1
array_push(global.common_opal_spells_sprite_list,s_amphramute)
array_push(global.common_opal_spells_art_list,s_amphramute_art)
array_push(global.common_opal_spells_effect_list,obj_amphramute)

// 2
array_push(global.common_opal_spells_sprite_list,s_lightning_bottle)
array_push(global.common_opal_spells_art_list,s_lightning_bottle_art)
array_push(global.common_opal_spells_effect_list,obj_lightning_bottle)

// Uncommon opal spells

global.uncommon_opal_spells_sprite_list = []
global.uncommon_opal_spells_art_list = []
global.uncommon_opal_spells_effect_list = []

global.uncommon_opal_spells_list = [global.uncommon_opal_spells_sprite_list,global.uncommon_opal_spells_art_list,global.uncommon_opal_spells_effect_list]

// 0 
array_push(global.uncommon_opal_spells_sprite_list,s_obsessive_research)
array_push(global.uncommon_opal_spells_art_list,s_obsessive_research_art)
array_push(global.uncommon_opal_spells_effect_list,obj_obsessive_research)

// 1
array_push(global.uncommon_opal_spells_sprite_list,s_amphralithic_glove)
array_push(global.uncommon_opal_spells_art_list,s_amphralithic_glove_art)
array_push(global.uncommon_opal_spells_effect_list,obj_amphralithic_glove)

// 2
array_push(global.uncommon_opal_spells_sprite_list,s_thunderbolt)
array_push(global.uncommon_opal_spells_art_list,s_thunderbolt_art)
array_push(global.uncommon_opal_spells_effect_list,obj_thunderbolt)

// Rare opal spells

global.rare_opal_spells_sprite_list = []
global.rare_opal_spells_art_list = []
global.rare_opal_spells_effect_list = []

global.rare_opal_spells_list = [global.rare_opal_spells_sprite_list,global.rare_opal_spells_art_list,global.rare_opal_spells_effect_list]

// 0 
array_push(global.rare_opal_spells_sprite_list,s_posthumous_success)
array_push(global.rare_opal_spells_art_list,s_posthumous_success_art)
array_push(global.rare_opal_spells_effect_list,obj_posthumous_success)

// 1
array_push(global.rare_opal_spells_sprite_list,s_elzarc_prestige)
array_push(global.rare_opal_spells_art_list,s_elzarc_prestige_art)
array_push(global.rare_opal_spells_effect_list,obj_elzarc_prestige)

// 2
array_push(global.rare_opal_spells_sprite_list,s_unstable_amphracell)
array_push(global.rare_opal_spells_art_list,s_unstable_amphracell_art)
array_push(global.rare_opal_spells_effect_list,obj_unstable_amphracell)

// Mythic opal spells

global.mythic_opal_spells_sprite_list = []
global.mythic_opal_spells_art_list = []
global.mythic_opal_spells_effect_list = []

global.mythic_opal_spells_list = [global.mythic_opal_spells_sprite_list,global.mythic_opal_spells_art_list,global.mythic_opal_spells_effect_list]

// 0 
array_push(global.mythic_opal_spells_sprite_list,s_experiment_unleashed)
array_push(global.mythic_opal_spells_art_list,s_experiment_unleashed_art)
array_push(global.mythic_opal_spells_effect_list,obj_experiment_unleashed)

// 1
array_push(global.mythic_opal_spells_sprite_list,s_amphralithic_cloak)
array_push(global.mythic_opal_spells_art_list,s_amphralithic_cloak_art)
array_push(global.mythic_opal_spells_effect_list,obj_amphralithic_cloak)

// 2
array_push(global.mythic_opal_spells_sprite_list,s_epiphany)
array_push(global.mythic_opal_spells_art_list,s_epiphany_art)
array_push(global.mythic_opal_spells_effect_list,obj_epiphany)

// Legendary opal spells

global.legendary_opal_spells_sprite_list = []
global.legendary_opal_spells_art_list = []
global.legendary_opal_spells_effect_list = []

global.legendary_opal_spells_list = [global.legendary_opal_spells_sprite_list,global.legendary_opal_spells_art_list,global.legendary_opal_spells_effect_list]

// 0 
array_push(global.legendary_opal_spells_sprite_list,s_prismatic_bolt)
array_push(global.legendary_opal_spells_art_list,s_prismatic_bolt_art)
array_push(global.legendary_opal_spells_effect_list,obj_prismatic_bolt)

// 1
array_push(global.legendary_opal_spells_sprite_list,s_ultimate_amphra)
array_push(global.legendary_opal_spells_art_list,s_ultimate_amphra_art)
array_push(global.legendary_opal_spells_effect_list,obj_ultimate_amphra)

// 2
array_push(global.legendary_opal_spells_sprite_list,s_awe_struck)
array_push(global.legendary_opal_spells_art_list,s_awe_struck_art)
array_push(global.legendary_opal_spells_effect_list,obj_awe_struck)

//====================================================================================================================================

// amethyst locales ============================================================================
// [0][7][0][0]  sprite = 0, art = 1, health = 2, channel = 3, effect function = 4

// Common amethyst locales

global.common_amethyst_locales_sprite_list = []
global.common_amethyst_locales_art_list = []
global.common_amethyst_locales_health_list = []
global.common_amethyst_locales_channel_list = []
global.common_amethyst_locales_effect_list = []

global.common_amethyst_locales_list = [global.common_amethyst_locales_sprite_list,global.common_amethyst_locales_art_list,
global.common_amethyst_locales_health_list, global.common_amethyst_locales_channel_list, global.common_amethyst_locales_effect_list]

// 0
array_push(global.common_amethyst_locales_sprite_list,s_violet_field)
array_push(global.common_amethyst_locales_art_list,s_violet_field_art)
array_push(global.common_amethyst_locales_health_list,2)
array_push(global.common_amethyst_locales_channel_list,1)
array_push(global.common_amethyst_locales_effect_list,obj_violet_field)

// 1
array_push(global.common_amethyst_locales_sprite_list,s_rapture_factory)
array_push(global.common_amethyst_locales_art_list,s_rapture_factory_art)
array_push(global.common_amethyst_locales_health_list,3)
array_push(global.common_amethyst_locales_channel_list,1)
array_push(global.common_amethyst_locales_effect_list,obj_rapture_factory)

// 2
array_push(global.common_amethyst_locales_sprite_list,s_lost_grove)
array_push(global.common_amethyst_locales_art_list,s_lost_grove_art)
array_push(global.common_amethyst_locales_health_list,3)
array_push(global.common_amethyst_locales_channel_list,3)
array_push(global.common_amethyst_locales_effect_list,obj_lost_grove)

// Uncommon amethyst locales

global.uncommon_amethyst_locales_sprite_list = []
global.uncommon_amethyst_locales_art_list = []
global.uncommon_amethyst_locales_health_list = []
global.uncommon_amethyst_locales_channel_list = []
global.uncommon_amethyst_locales_effect_list = []

global.uncommon_amethyst_locales_list = [global.uncommon_amethyst_locales_sprite_list,global.uncommon_amethyst_locales_art_list,
global.uncommon_amethyst_locales_health_list, global.uncommon_amethyst_locales_channel_list, global.uncommon_amethyst_locales_effect_list]

// 0
array_push(global.uncommon_amethyst_locales_sprite_list,s_amethyst_obelisk)
array_push(global.uncommon_amethyst_locales_art_list,s_amethyst_obelisk_art)
array_push(global.uncommon_amethyst_locales_health_list,4)
array_push(global.uncommon_amethyst_locales_channel_list,4)
array_push(global.uncommon_amethyst_locales_effect_list,obj_amethyst_obelisk)

// 1
array_push(global.uncommon_amethyst_locales_sprite_list,s_ravenmoor_den)
array_push(global.uncommon_amethyst_locales_art_list,s_ravenmoor_den_art)
array_push(global.uncommon_amethyst_locales_health_list,2)
array_push(global.uncommon_amethyst_locales_channel_list,2)
array_push(global.uncommon_amethyst_locales_effect_list,obj_ravenmoor_den)

// 2
array_push(global.uncommon_amethyst_locales_sprite_list,s_sleeping_chamber)
array_push(global.uncommon_amethyst_locales_art_list,s_sleeping_chamber_art)
array_push(global.uncommon_amethyst_locales_health_list,4)
array_push(global.uncommon_amethyst_locales_channel_list,1)
array_push(global.uncommon_amethyst_locales_effect_list,obj_sleeping_chamber)

// Rare amethyst locales

global.rare_amethyst_locales_sprite_list = []
global.rare_amethyst_locales_art_list = []
global.rare_amethyst_locales_health_list = []
global.rare_amethyst_locales_channel_list = []
global.rare_amethyst_locales_effect_list = []

global.rare_amethyst_locales_list = [global.rare_amethyst_locales_sprite_list,global.rare_amethyst_locales_art_list,
global.rare_amethyst_locales_health_list, global.rare_amethyst_locales_channel_list, global.rare_amethyst_locales_effect_list]

// 0
array_push(global.rare_amethyst_locales_sprite_list,s_bizarre_dreamscape)
array_push(global.rare_amethyst_locales_art_list,s_bizarre_dreamscape_art)
array_push(global.rare_amethyst_locales_health_list,6)
array_push(global.rare_amethyst_locales_channel_list,2)
array_push(global.rare_amethyst_locales_effect_list,obj_bizarre_dreamscape)

// 1
array_push(global.rare_amethyst_locales_sprite_list,s_knowledge_dump)
array_push(global.rare_amethyst_locales_art_list,s_knowledge_dump_art)
array_push(global.rare_amethyst_locales_health_list,2)
array_push(global.rare_amethyst_locales_channel_list,4)
array_push(global.rare_amethyst_locales_effect_list,obj_knowledge_dump)

// 2
array_push(global.rare_amethyst_locales_sprite_list,s_fields_of_rage)
array_push(global.rare_amethyst_locales_art_list,s_fields_of_rage_art)
array_push(global.rare_amethyst_locales_health_list,5)
array_push(global.rare_amethyst_locales_channel_list,5)
array_push(global.rare_amethyst_locales_effect_list,obj_fields_of_rage)

// Mythic amethyst locales

global.mythic_amethyst_locales_sprite_list = []
global.mythic_amethyst_locales_art_list = []
global.mythic_amethyst_locales_health_list = []
global.mythic_amethyst_locales_channel_list = []
global.mythic_amethyst_locales_effect_list = []

global.mythic_amethyst_locales_list = [global.mythic_amethyst_locales_sprite_list,global.mythic_amethyst_locales_art_list,
global.mythic_amethyst_locales_health_list, global.mythic_amethyst_locales_channel_list, global.mythic_amethyst_locales_effect_list]

// 0
array_push(global.mythic_amethyst_locales_sprite_list,s_realm_infinite)
array_push(global.mythic_amethyst_locales_art_list,s_realm_infinite_art)
array_push(global.mythic_amethyst_locales_health_list,8)
array_push(global.mythic_amethyst_locales_channel_list,0)
array_push(global.mythic_amethyst_locales_effect_list,obj_realm_infinite)

// 1
array_push(global.mythic_amethyst_locales_sprite_list,s_delgar_shrine)
array_push(global.mythic_amethyst_locales_art_list,s_delgar_shrine_art)
array_push(global.mythic_amethyst_locales_health_list,6)
array_push(global.mythic_amethyst_locales_channel_list,6)
array_push(global.mythic_amethyst_locales_effect_list,obj_delgar_shrine)

// 2
array_push(global.mythic_amethyst_locales_sprite_list,s_virellia_swamp)
array_push(global.mythic_amethyst_locales_art_list,s_virellia_swamp_art)
array_push(global.mythic_amethyst_locales_health_list,3)
array_push(global.mythic_amethyst_locales_channel_list,2)
array_push(global.mythic_amethyst_locales_effect_list,obj_virellia_swamp)

// Legendary amethyst locales

global.legendary_amethyst_locales_sprite_list = []
global.legendary_amethyst_locales_art_list = []
global.legendary_amethyst_locales_health_list = []
global.legendary_amethyst_locales_channel_list = []
global.legendary_amethyst_locales_effect_list = []

global.legendary_amethyst_locales_list = [global.legendary_amethyst_locales_sprite_list,global.legendary_amethyst_locales_art_list,
global.legendary_amethyst_locales_health_list, global.legendary_amethyst_locales_channel_list, global.legendary_amethyst_locales_effect_list]

// 0
array_push(global.legendary_amethyst_locales_sprite_list,s_chamber_of_dreams)
array_push(global.legendary_amethyst_locales_art_list,s_chamber_of_dreams_art)
array_push(global.legendary_amethyst_locales_health_list,1)
array_push(global.legendary_amethyst_locales_channel_list,4)
array_push(global.legendary_amethyst_locales_effect_list,obj_chamber_of_dreams)

// 1
array_push(global.legendary_amethyst_locales_sprite_list,s_piercing_havoc)
array_push(global.legendary_amethyst_locales_art_list,s_piercing_havoc_art)
array_push(global.legendary_amethyst_locales_health_list,20)
array_push(global.legendary_amethyst_locales_channel_list,15)
array_push(global.legendary_amethyst_locales_effect_list,obj_piercing_havoc)

// 2
array_push(global.legendary_amethyst_locales_sprite_list,s_castle_beyond_reason)
array_push(global.legendary_amethyst_locales_art_list,s_castle_beyond_reason_art)
array_push(global.legendary_amethyst_locales_health_list,3)
array_push(global.legendary_amethyst_locales_channel_list,2)
array_push(global.legendary_amethyst_locales_effect_list,obj_castle_beyond_reason)

// amethyst spells ============================================================================
// [0][7][1][0]  sprite = 0, art = 1, effect = 2

// Common amethyst spells

global.common_amethyst_spells_sprite_list = []
global.common_amethyst_spells_art_list = []
global.common_amethyst_spells_effect_list = []

global.common_amethyst_spells_list = [global.common_amethyst_spells_sprite_list,global.common_amethyst_spells_art_list,global.common_amethyst_spells_effect_list]

// 0 
array_push(global.common_amethyst_spells_sprite_list,s_recurring_dream)
array_push(global.common_amethyst_spells_art_list,s_recurring_deam_art)
array_push(global.common_amethyst_spells_effect_list,obj_recurring_dream)

// 1
array_push(global.common_amethyst_spells_sprite_list,s_reckless_abandon)
array_push(global.common_amethyst_spells_art_list,s_reckless_abandon_art)
array_push(global.common_amethyst_spells_effect_list,obj_reckless_abandon)

// 2
array_push(global.common_amethyst_spells_sprite_list,s_ignorant_bliss)
array_push(global.common_amethyst_spells_art_list,s_ignorant_bliss_art)
array_push(global.common_amethyst_spells_effect_list,obj_ignorant_bliss)

// Uncommon amethyst spells

global.uncommon_amethyst_spells_sprite_list = []
global.uncommon_amethyst_spells_art_list = []
global.uncommon_amethyst_spells_effect_list = []

global.uncommon_amethyst_spells_list = [global.uncommon_amethyst_spells_sprite_list,global.uncommon_amethyst_spells_art_list,global.uncommon_amethyst_spells_effect_list]

// 0 
array_push(global.uncommon_amethyst_spells_sprite_list,s_first_steps)
array_push(global.uncommon_amethyst_spells_art_list,s_first_steps_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_first_steps)

// 1
array_push(global.uncommon_amethyst_spells_sprite_list,s_liquify)
array_push(global.uncommon_amethyst_spells_art_list,s_liquify_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_liquify)

// 2
array_push(global.uncommon_amethyst_spells_sprite_list,s_in_a_trance)
array_push(global.uncommon_amethyst_spells_art_list,s_in_a_trance_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_in_a_trance)

// Rare amethyst spells

global.rare_amethyst_spells_sprite_list = []
global.rare_amethyst_spells_art_list = []
global.rare_amethyst_spells_effect_list = []

global.rare_amethyst_spells_list = [global.rare_amethyst_spells_sprite_list,global.rare_amethyst_spells_art_list,global.rare_amethyst_spells_effect_list]

// 0 
array_push(global.rare_amethyst_spells_sprite_list,s_ransack)
array_push(global.rare_amethyst_spells_art_list,s_ransack_art)
array_push(global.rare_amethyst_spells_effect_list,obj_ransack)

// 1
array_push(global.rare_amethyst_spells_sprite_list,s_dreamstray)
array_push(global.rare_amethyst_spells_art_list,s_dreamstray_art)
array_push(global.rare_amethyst_spells_effect_list,obj_dreamstray)

// 2
array_push(global.rare_amethyst_spells_sprite_list,s_rapture_infusion)
array_push(global.rare_amethyst_spells_art_list,s_rapture_infusion_art)
array_push(global.rare_amethyst_spells_effect_list,obj_rapture_infusion)

// Mythic amethyst spells

global.mythic_amethyst_spells_sprite_list = []
global.mythic_amethyst_spells_art_list = []
global.mythic_amethyst_spells_effect_list = []

global.mythic_amethyst_spells_list = [global.mythic_amethyst_spells_sprite_list,global.mythic_amethyst_spells_art_list,global.mythic_amethyst_spells_effect_list]

// 0 
array_push(global.mythic_amethyst_spells_sprite_list,s_dream_imprisonment)
array_push(global.mythic_amethyst_spells_art_list,s_dream_imprisonment_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_dream_imprisonment)

// 1
array_push(global.mythic_amethyst_spells_sprite_list,s_shared_amnesia)
array_push(global.mythic_amethyst_spells_art_list,s_shared_amnesia_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_shared_amnesia)

// 2
array_push(global.mythic_amethyst_spells_sprite_list,s_phantom_vengeance)
array_push(global.mythic_amethyst_spells_art_list,s_phantom_vengeance_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_phantom_vengeance)

// Legendary amethyst spells

global.legendary_amethyst_spells_sprite_list = []
global.legendary_amethyst_spells_art_list = []
global.legendary_amethyst_spells_effect_list = []

global.legendary_amethyst_spells_list = [global.legendary_amethyst_spells_sprite_list,global.legendary_amethyst_spells_art_list,global.legendary_amethyst_spells_effect_list]

// 0 
array_push(global.legendary_amethyst_spells_sprite_list,s_havoc_eclipse)
array_push(global.legendary_amethyst_spells_art_list,s_havoc_eclipse_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_havoc_eclipse)

// 1
array_push(global.legendary_amethyst_spells_sprite_list,s_boundless_psychosis)
array_push(global.legendary_amethyst_spells_art_list,s_boundless_psychosis_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_boundless_psychosis)

// 2
array_push(global.legendary_amethyst_spells_sprite_list,s_chaos_wake)
array_push(global.legendary_amethyst_spells_art_list,s_chaos_wake_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_chaos_wake)

//====================================================================================================================================

// [0][0][0] Ruby Locale = 0, spell = 1
global.common_ruby_list = [global.common_ruby_locales_list,global.common_ruby_spells_list]
global.uncommon_ruby_list = [global.uncommon_ruby_locales_list,global.uncommon_ruby_spells_list]
global.rare_ruby_list = [global.rare_ruby_locales_list,global.rare_ruby_spells_list]
global.mythic_ruby_list = [global.mythic_ruby_locales_list,global.mythic_ruby_spells_list]
global.legendary_ruby_list = [global.legendary_ruby_locales_list,global.legendary_ruby_spells_list]

// [0][1][0] Pearl Locale = 0, spell = 1
global.common_pearl_list = [global.common_pearl_locales_list,global.common_pearl_spells_list]
global.uncommon_pearl_list = [global.uncommon_pearl_locales_list,global.uncommon_pearl_spells_list]
global.rare_pearl_list = [global.rare_pearl_locales_list,global.rare_pearl_spells_list]
global.mythic_pearl_list = [global.mythic_pearl_locales_list,global.mythic_pearl_spells_list]
global.legendary_pearl_list = [global.legendary_pearl_locales_list,global.legendary_pearl_spells_list]

// [0][2][0] Onyx Locale = 0, spell = 1
global.common_onyx_list = [global.common_onyx_locales_list,global.common_onyx_spells_list]
global.uncommon_onyx_list = [global.uncommon_onyx_locales_list,global.uncommon_onyx_spells_list]
global.rare_onyx_list = [global.rare_onyx_locales_list,global.rare_onyx_spells_list]
global.mythic_onyx_list = [global.mythic_onyx_locales_list,global.mythic_onyx_spells_list]
global.legendary_onyx_list = [global.legendary_onyx_locales_list,global.legendary_onyx_spells_list]

// [0][3][0] sapphire Locale = 0, spell = 1
global.common_sapphire_list = [global.common_sapphire_locales_list,global.common_sapphire_spells_list]
global.uncommon_sapphire_list = [global.uncommon_sapphire_locales_list,global.uncommon_sapphire_spells_list]
global.rare_sapphire_list = [global.rare_sapphire_locales_list,global.rare_sapphire_spells_list]
global.mythic_sapphire_list = [global.mythic_sapphire_locales_list,global.mythic_sapphire_spells_list]
global.legendary_sapphire_list = [global.legendary_sapphire_locales_list,global.legendary_sapphire_spells_list]

// [0][4][0] emerald Locale = 0, spell = 1
global.common_emerald_list = [global.common_emerald_locales_list,global.common_emerald_spells_list]
global.uncommon_emerald_list = [global.uncommon_emerald_locales_list,global.uncommon_emerald_spells_list]
global.rare_emerald_list = [global.rare_emerald_locales_list,global.rare_emerald_spells_list]
global.mythic_emerald_list = [global.mythic_emerald_locales_list,global.mythic_emerald_spells_list]
global.legendary_emerald_list = [global.legendary_emerald_locales_list,global.legendary_emerald_spells_list]

// [0][5][0] citrine Locale = 0, spell = 1
global.common_citrine_list = [global.common_citrine_locales_list,global.common_citrine_spells_list]
global.uncommon_citrine_list = [global.uncommon_citrine_locales_list,global.uncommon_citrine_spells_list]
global.rare_citrine_list = [global.rare_citrine_locales_list,global.rare_citrine_spells_list]
global.mythic_citrine_list = [global.mythic_citrine_locales_list,global.mythic_citrine_spells_list]
global.legendary_citrine_list = [global.legendary_citrine_locales_list,global.legendary_citrine_spells_list]

// [0][6][0] opal Locale = 0, spell = 1
global.common_opal_list = [global.common_opal_locales_list,global.common_opal_spells_list]
global.uncommon_opal_list = [global.uncommon_opal_locales_list,global.uncommon_opal_spells_list]
global.rare_opal_list = [global.rare_opal_locales_list,global.rare_opal_spells_list]
global.mythic_opal_list = [global.mythic_opal_locales_list,global.mythic_opal_spells_list]
global.legendary_opal_list = [global.legendary_opal_locales_list,global.legendary_opal_spells_list]

// [0][7][0] amethyst Locale = 0, spell = 1
global.common_amethyst_list = [global.common_amethyst_locales_list,global.common_amethyst_spells_list]
global.uncommon_amethyst_list = [global.uncommon_amethyst_locales_list,global.uncommon_amethyst_spells_list]
global.rare_amethyst_list = [global.rare_amethyst_locales_list,global.rare_amethyst_spells_list]
global.mythic_amethyst_list = [global.mythic_amethyst_locales_list,global.mythic_amethyst_spells_list]
global.legendary_amethyst_list = [global.legendary_amethyst_locales_list,global.legendary_amethyst_spells_list]

// [0][0] Element ruby = 0, pearl = 1
global.common_list = [global.common_ruby_list,global.common_pearl_list,global.common_onyx_list,global.common_sapphire_list,global.common_emerald_list,global.common_citrine_list,global.common_opal_list,global.common_amethyst_list];
global.uncommon_list = [global.uncommon_ruby_list,global.uncommon_pearl_list,global.uncommon_onyx_list,global.uncommon_sapphire_list,global.uncommon_emerald_list,global.uncommon_citrine_list,global.uncommon_opal_list,global.uncommon_amethyst_list];
global.rare_list = [global.rare_ruby_list,global.rare_pearl_list,global.rare_onyx_list,global.rare_sapphire_list,global.rare_emerald_list,global.rare_citrine_list,global.rare_opal_list,global.rare_amethyst_list];
global.mythic_list = [global.mythic_ruby_list,global.mythic_pearl_list,global.mythic_onyx_list,global.mythic_sapphire_list,global.mythic_emerald_list,global.mythic_citrine_list,global.mythic_opal_list,global.mythic_amethyst_list];
global.legendary_list = [global.legendary_ruby_list,global.legendary_pearl_list,global.legendary_onyx_list,global.legendary_sapphire_list,global.legendary_emerald_list,global.legendary_citrine_list,global.legendary_opal_list,global.legendary_amethyst_list];

// [0] Rarities common = 0, uncommon = 1, rare = 2, mythic = 3, legendary = 4
global.rarity_list = [global.common_list, global.uncommon_list, global.rare_list, 
global.mythic_list, global.legendary_list];

global.rarity_gem_list = [s_common,s_uncommon,s_rare,s_mythic,s_legendary]