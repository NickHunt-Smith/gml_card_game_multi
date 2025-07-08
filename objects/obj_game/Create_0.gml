/// @description Database

var _loaded = texturegroup_load("Default");

//audio_play_sound(snd_volcano,10,true);

randomise();

//show_debug_message(window_get_width())
//show_debug_message(window_get_height())
window_set_size(1920, 992);
//window_set_fullscreen(true)
global.card_offset_x = 112;
global.card_offset_y = 184;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
depth = -402;
increment = 0;
reverse = false;
global.health_offset_x = 193;

vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();

game_start = true;
if global.pvp_active = false {
	//if random(100) < 50 {
	//	global.priority = "player";
	//} else {
	//	global.priority = "opp"
	//}
	global.priority = "player";
}
global.no_pass_prio = false;
global.opponent = noone;
global.start_draft = true;
global.player_enabled = false;
global.stack_active = false;
global.resolve_stack = false;
global.targeting = false;
global.targeting_empty = false;
global.targeting_spell = false;
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
global.ignore_next_opp_locale = 0;
global.rerolls_available = 0;
global.turn_count = 0;
global.win_threshold = 30;
global.lingering_active = false;

global.player_copying = false;
global.opp_copying = false;

global.player_locale_1 = noone;
global.player_locale_2 = noone;
global.player_locale_3 = noone;
global.player_locale_4 = noone;

global.opp_locale_1 = noone;
global.opp_locale_2 = noone;
global.opp_locale_3 = noone;
global.opp_locale_4 = noone;

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
array_push(global.common_sapphire_locales_sprite_list,s_fetid_sewer)
array_push(global.common_sapphire_locales_art_list,s_fetid_sewer_art)
array_push(global.common_sapphire_locales_health_list,1)
array_push(global.common_sapphire_locales_channel_list,1)
array_push(global.common_sapphire_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_sapphire_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_sapphire_locales_art_list,s_decrepit_chapel_art)
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
array_push(global.uncommon_sapphire_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_sapphire_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_sapphire_locales_health_list,2)
array_push(global.uncommon_sapphire_locales_channel_list,2)
array_push(global.uncommon_sapphire_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_sapphire_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_sapphire_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_sapphire_locales_health_list,2)
array_push(global.uncommon_sapphire_locales_channel_list,2)
array_push(global.uncommon_sapphire_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_sapphire_locales_sprite_list,s_wasteland)
array_push(global.uncommon_sapphire_locales_art_list,s_wasteland_art)
array_push(global.uncommon_sapphire_locales_health_list,2)
array_push(global.uncommon_sapphire_locales_channel_list,3)
array_push(global.uncommon_sapphire_locales_effect_list,obj_wasteland)

// Rare sapphire locales

global.rare_sapphire_locales_sprite_list = []
global.rare_sapphire_locales_art_list = []
global.rare_sapphire_locales_health_list = []
global.rare_sapphire_locales_channel_list = []
global.rare_sapphire_locales_effect_list = []

global.rare_sapphire_locales_list = [global.rare_sapphire_locales_sprite_list,global.rare_sapphire_locales_art_list,
global.rare_sapphire_locales_health_list, global.rare_sapphire_locales_channel_list, global.rare_sapphire_locales_effect_list]

// 0
array_push(global.rare_sapphire_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_sapphire_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_sapphire_locales_health_list,5)
array_push(global.rare_sapphire_locales_channel_list,3)
array_push(global.rare_sapphire_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_sapphire_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_sapphire_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_sapphire_locales_health_list,4)
array_push(global.rare_sapphire_locales_channel_list,3)
array_push(global.rare_sapphire_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_sapphire_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_sapphire_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_sapphire_locales_health_list,4)
array_push(global.rare_sapphire_locales_channel_list,3)
array_push(global.rare_sapphire_locales_effect_list,obj_trinket_vendor)

// Mythic sapphire locales

global.mythic_sapphire_locales_sprite_list = []
global.mythic_sapphire_locales_art_list = []
global.mythic_sapphire_locales_health_list = []
global.mythic_sapphire_locales_channel_list = []
global.mythic_sapphire_locales_effect_list = []

global.mythic_sapphire_locales_list = [global.mythic_sapphire_locales_sprite_list,global.mythic_sapphire_locales_art_list,
global.mythic_sapphire_locales_health_list, global.mythic_sapphire_locales_channel_list, global.mythic_sapphire_locales_effect_list]

// 0
array_push(global.mythic_sapphire_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_sapphire_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_sapphire_locales_health_list,6)
array_push(global.mythic_sapphire_locales_channel_list,3)
array_push(global.mythic_sapphire_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_sapphire_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_sapphire_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_sapphire_locales_health_list,6)
array_push(global.mythic_sapphire_locales_channel_list,2)
array_push(global.mythic_sapphire_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_sapphire_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_sapphire_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_sapphire_locales_health_list,8)
array_push(global.mythic_sapphire_locales_channel_list,3)
array_push(global.mythic_sapphire_locales_effect_list,obj_mirror_prison)

// Legendary sapphire locales

global.legendary_sapphire_locales_sprite_list = []
global.legendary_sapphire_locales_art_list = []
global.legendary_sapphire_locales_health_list = []
global.legendary_sapphire_locales_channel_list = []
global.legendary_sapphire_locales_effect_list = []

global.legendary_sapphire_locales_list = [global.legendary_sapphire_locales_sprite_list,global.legendary_sapphire_locales_art_list,
global.legendary_sapphire_locales_health_list, global.legendary_sapphire_locales_channel_list, global.legendary_sapphire_locales_effect_list]

// 0
array_push(global.legendary_sapphire_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_sapphire_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_sapphire_locales_health_list,6)
array_push(global.legendary_sapphire_locales_channel_list,1)
array_push(global.legendary_sapphire_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_sapphire_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_sapphire_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_sapphire_locales_health_list,10)
array_push(global.legendary_sapphire_locales_channel_list,5)
array_push(global.legendary_sapphire_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_sapphire_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_sapphire_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_sapphire_locales_health_list,6)
array_push(global.legendary_sapphire_locales_channel_list,4)
array_push(global.legendary_sapphire_locales_effect_list,obj_ravenmoor)

// sapphire spells ============================================================================
// [0][3][1][0]  sprite = 0, art = 1, effect = 2

// Common sapphire spells

global.common_sapphire_spells_sprite_list = []
global.common_sapphire_spells_art_list = []
global.common_sapphire_spells_effect_list = []

global.common_sapphire_spells_list = [global.common_sapphire_spells_sprite_list,global.common_sapphire_spells_art_list,global.common_sapphire_spells_effect_list]

// 0 
array_push(global.common_sapphire_spells_sprite_list,s_fanaticism)
array_push(global.common_sapphire_spells_art_list,s_fanaticism_art)
array_push(global.common_sapphire_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_sapphire_spells_sprite_list,s_backstab)
array_push(global.common_sapphire_spells_art_list,s_backstab_art)
array_push(global.common_sapphire_spells_effect_list,obj_backstab)

// 2
array_push(global.common_sapphire_spells_sprite_list,s_consumed)
array_push(global.common_sapphire_spells_art_list,s_consumed_art)
array_push(global.common_sapphire_spells_effect_list,obj_consumed)

// Uncommon sapphire spells

global.uncommon_sapphire_spells_sprite_list = []
global.uncommon_sapphire_spells_art_list = []
global.uncommon_sapphire_spells_effect_list = []

global.uncommon_sapphire_spells_list = [global.uncommon_sapphire_spells_sprite_list,global.uncommon_sapphire_spells_art_list,global.uncommon_sapphire_spells_effect_list]

// 0 
array_push(global.uncommon_sapphire_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_sapphire_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_sapphire_spells_sprite_list,s_tithes)
array_push(global.uncommon_sapphire_spells_art_list,s_tithes_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_sapphire_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_sapphire_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_sapphire_spells_effect_list,obj_restoration_effort)

// Rare sapphire spells

global.rare_sapphire_spells_sprite_list = []
global.rare_sapphire_spells_art_list = []
global.rare_sapphire_spells_effect_list = []

global.rare_sapphire_spells_list = [global.rare_sapphire_spells_sprite_list,global.rare_sapphire_spells_art_list,global.rare_sapphire_spells_effect_list]

// 0 
array_push(global.rare_sapphire_spells_sprite_list,s_mirrorspell)
array_push(global.rare_sapphire_spells_art_list,s_mirrorspell_art)
array_push(global.rare_sapphire_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_sapphire_spells_sprite_list,s_subjugate)
array_push(global.rare_sapphire_spells_art_list,s_subjugate_art)
array_push(global.rare_sapphire_spells_effect_list,obj_subjugate)

// 2
array_push(global.rare_sapphire_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_sapphire_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_sapphire_spells_effect_list,obj_vossen_ritual)

// Mythic sapphire spells

global.mythic_sapphire_spells_sprite_list = []
global.mythic_sapphire_spells_art_list = []
global.mythic_sapphire_spells_effect_list = []

global.mythic_sapphire_spells_list = [global.mythic_sapphire_spells_sprite_list,global.mythic_sapphire_spells_art_list,global.mythic_sapphire_spells_effect_list]

// 0 
array_push(global.mythic_sapphire_spells_sprite_list,s_crumble)
array_push(global.mythic_sapphire_spells_art_list,s_crumble_art)
array_push(global.mythic_sapphire_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_sapphire_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_sapphire_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_sapphire_spells_effect_list,obj_dark_reflection)

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
array_push(global.legendary_sapphire_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_sapphire_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_sapphire_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_sapphire_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_sapphire_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_sapphire_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_sapphire_spells_effect_list,obj_return_from_beyond)

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
array_push(global.common_emerald_locales_health_list,2)
array_push(global.common_emerald_locales_channel_list,1)
array_push(global.common_emerald_locales_effect_list,obj_sun_drenched_clearing)

// 1
array_push(global.common_emerald_locales_sprite_list,s_fetid_sewer)
array_push(global.common_emerald_locales_art_list,s_fetid_sewer_art)
array_push(global.common_emerald_locales_health_list,1)
array_push(global.common_emerald_locales_channel_list,1)
array_push(global.common_emerald_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_emerald_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_emerald_locales_art_list,s_decrepit_chapel_art)
array_push(global.common_emerald_locales_health_list,1)
array_push(global.common_emerald_locales_channel_list,2)
array_push(global.common_emerald_locales_effect_list,obj_decrepit_chapel)

// Uncommon emerald locales

global.uncommon_emerald_locales_sprite_list = []
global.uncommon_emerald_locales_art_list = []
global.uncommon_emerald_locales_health_list = []
global.uncommon_emerald_locales_channel_list = []
global.uncommon_emerald_locales_effect_list = []

global.uncommon_emerald_locales_list = [global.uncommon_emerald_locales_sprite_list,global.uncommon_emerald_locales_art_list,
global.uncommon_emerald_locales_health_list, global.uncommon_emerald_locales_channel_list, global.uncommon_emerald_locales_effect_list]

// 0
array_push(global.uncommon_emerald_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_emerald_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_emerald_locales_health_list,2)
array_push(global.uncommon_emerald_locales_channel_list,2)
array_push(global.uncommon_emerald_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_emerald_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_emerald_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_emerald_locales_health_list,2)
array_push(global.uncommon_emerald_locales_channel_list,2)
array_push(global.uncommon_emerald_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_emerald_locales_sprite_list,s_wasteland)
array_push(global.uncommon_emerald_locales_art_list,s_wasteland_art)
array_push(global.uncommon_emerald_locales_health_list,2)
array_push(global.uncommon_emerald_locales_channel_list,3)
array_push(global.uncommon_emerald_locales_effect_list,obj_wasteland)

// Rare emerald locales

global.rare_emerald_locales_sprite_list = []
global.rare_emerald_locales_art_list = []
global.rare_emerald_locales_health_list = []
global.rare_emerald_locales_channel_list = []
global.rare_emerald_locales_effect_list = []

global.rare_emerald_locales_list = [global.rare_emerald_locales_sprite_list,global.rare_emerald_locales_art_list,
global.rare_emerald_locales_health_list, global.rare_emerald_locales_channel_list, global.rare_emerald_locales_effect_list]

// 0
array_push(global.rare_emerald_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_emerald_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_emerald_locales_health_list,5)
array_push(global.rare_emerald_locales_channel_list,3)
array_push(global.rare_emerald_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_emerald_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_emerald_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_emerald_locales_health_list,4)
array_push(global.rare_emerald_locales_channel_list,3)
array_push(global.rare_emerald_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_emerald_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_emerald_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_emerald_locales_health_list,4)
array_push(global.rare_emerald_locales_channel_list,3)
array_push(global.rare_emerald_locales_effect_list,obj_trinket_vendor)

// Mythic emerald locales

global.mythic_emerald_locales_sprite_list = []
global.mythic_emerald_locales_art_list = []
global.mythic_emerald_locales_health_list = []
global.mythic_emerald_locales_channel_list = []
global.mythic_emerald_locales_effect_list = []

global.mythic_emerald_locales_list = [global.mythic_emerald_locales_sprite_list,global.mythic_emerald_locales_art_list,
global.mythic_emerald_locales_health_list, global.mythic_emerald_locales_channel_list, global.mythic_emerald_locales_effect_list]

// 0
array_push(global.mythic_emerald_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_emerald_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_emerald_locales_health_list,6)
array_push(global.mythic_emerald_locales_channel_list,3)
array_push(global.mythic_emerald_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_emerald_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_emerald_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_emerald_locales_health_list,6)
array_push(global.mythic_emerald_locales_channel_list,2)
array_push(global.mythic_emerald_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_emerald_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_emerald_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_emerald_locales_health_list,8)
array_push(global.mythic_emerald_locales_channel_list,3)
array_push(global.mythic_emerald_locales_effect_list,obj_mirror_prison)

// Legendary emerald locales

global.legendary_emerald_locales_sprite_list = []
global.legendary_emerald_locales_art_list = []
global.legendary_emerald_locales_health_list = []
global.legendary_emerald_locales_channel_list = []
global.legendary_emerald_locales_effect_list = []

global.legendary_emerald_locales_list = [global.legendary_emerald_locales_sprite_list,global.legendary_emerald_locales_art_list,
global.legendary_emerald_locales_health_list, global.legendary_emerald_locales_channel_list, global.legendary_emerald_locales_effect_list]

// 0
array_push(global.legendary_emerald_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_emerald_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_emerald_locales_health_list,6)
array_push(global.legendary_emerald_locales_channel_list,1)
array_push(global.legendary_emerald_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_emerald_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_emerald_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_emerald_locales_health_list,10)
array_push(global.legendary_emerald_locales_channel_list,5)
array_push(global.legendary_emerald_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_emerald_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_emerald_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_emerald_locales_health_list,6)
array_push(global.legendary_emerald_locales_channel_list,4)
array_push(global.legendary_emerald_locales_effect_list,obj_ravenmoor)

// emerald spells ============================================================================
// [0][4][1][0]  sprite = 0, art = 1, effect = 2

// Common emerald spells

global.common_emerald_spells_sprite_list = []
global.common_emerald_spells_art_list = []
global.common_emerald_spells_effect_list = []

global.common_emerald_spells_list = [global.common_emerald_spells_sprite_list,global.common_emerald_spells_art_list,global.common_emerald_spells_effect_list]

// 0 
array_push(global.common_emerald_spells_sprite_list,s_fanaticism)
array_push(global.common_emerald_spells_art_list,s_fanaticism_art)
array_push(global.common_emerald_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_emerald_spells_sprite_list,s_backstab)
array_push(global.common_emerald_spells_art_list,s_backstab_art)
array_push(global.common_emerald_spells_effect_list,obj_backstab)

// 2
array_push(global.common_emerald_spells_sprite_list,s_consumed)
array_push(global.common_emerald_spells_art_list,s_consumed_art)
array_push(global.common_emerald_spells_effect_list,obj_consumed)

// Uncommon emerald spells

global.uncommon_emerald_spells_sprite_list = []
global.uncommon_emerald_spells_art_list = []
global.uncommon_emerald_spells_effect_list = []

global.uncommon_emerald_spells_list = [global.uncommon_emerald_spells_sprite_list,global.uncommon_emerald_spells_art_list,global.uncommon_emerald_spells_effect_list]

// 0 
array_push(global.uncommon_emerald_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_emerald_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_emerald_spells_sprite_list,s_tithes)
array_push(global.uncommon_emerald_spells_art_list,s_tithes_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_emerald_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_emerald_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_emerald_spells_effect_list,obj_restoration_effort)

// Rare emerald spells

global.rare_emerald_spells_sprite_list = []
global.rare_emerald_spells_art_list = []
global.rare_emerald_spells_effect_list = []

global.rare_emerald_spells_list = [global.rare_emerald_spells_sprite_list,global.rare_emerald_spells_art_list,global.rare_emerald_spells_effect_list]

// 0 
array_push(global.rare_emerald_spells_sprite_list,s_mirrorspell)
array_push(global.rare_emerald_spells_art_list,s_mirrorspell_art)
array_push(global.rare_emerald_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_emerald_spells_sprite_list,s_subjugate)
array_push(global.rare_emerald_spells_art_list,s_subjugate_art)
array_push(global.rare_emerald_spells_effect_list,obj_subjugate)

// 2
array_push(global.rare_emerald_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_emerald_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_emerald_spells_effect_list,obj_vossen_ritual)

// Mythic emerald spells

global.mythic_emerald_spells_sprite_list = []
global.mythic_emerald_spells_art_list = []
global.mythic_emerald_spells_effect_list = []

global.mythic_emerald_spells_list = [global.mythic_emerald_spells_sprite_list,global.mythic_emerald_spells_art_list,global.mythic_emerald_spells_effect_list]

// 0 
array_push(global.mythic_emerald_spells_sprite_list,s_crumble)
array_push(global.mythic_emerald_spells_art_list,s_crumble_art)
array_push(global.mythic_emerald_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_emerald_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_emerald_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_emerald_spells_effect_list,obj_dark_reflection)

// 2
array_push(global.mythic_emerald_spells_sprite_list,s_excommunicate)
array_push(global.mythic_emerald_spells_art_list,s_excommunicate_art)
array_push(global.mythic_emerald_spells_effect_list,obj_excommunicate)

// Legendary emerald spells

global.legendary_emerald_spells_sprite_list = []
global.legendary_emerald_spells_art_list = []
global.legendary_emerald_spells_effect_list = []

global.legendary_emerald_spells_list = [global.legendary_emerald_spells_sprite_list,global.legendary_emerald_spells_art_list,global.legendary_emerald_spells_effect_list]

// 0 
array_push(global.legendary_emerald_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_emerald_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_emerald_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_emerald_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_emerald_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_emerald_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_emerald_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_emerald_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_emerald_spells_effect_list,obj_return_from_beyond)

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
array_push(global.common_citrine_locales_health_list,2)
array_push(global.common_citrine_locales_channel_list,1)
array_push(global.common_citrine_locales_effect_list,obj_dusty_pass)

// 1
array_push(global.common_citrine_locales_sprite_list,s_fetid_sewer)
array_push(global.common_citrine_locales_art_list,s_fetid_sewer_art)
array_push(global.common_citrine_locales_health_list,1)
array_push(global.common_citrine_locales_channel_list,1)
array_push(global.common_citrine_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_citrine_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_citrine_locales_art_list,s_decrepit_chapel_art)
array_push(global.common_citrine_locales_health_list,1)
array_push(global.common_citrine_locales_channel_list,2)
array_push(global.common_citrine_locales_effect_list,obj_decrepit_chapel)

// Uncommon citrine locales

global.uncommon_citrine_locales_sprite_list = []
global.uncommon_citrine_locales_art_list = []
global.uncommon_citrine_locales_health_list = []
global.uncommon_citrine_locales_channel_list = []
global.uncommon_citrine_locales_effect_list = []

global.uncommon_citrine_locales_list = [global.uncommon_citrine_locales_sprite_list,global.uncommon_citrine_locales_art_list,
global.uncommon_citrine_locales_health_list, global.uncommon_citrine_locales_channel_list, global.uncommon_citrine_locales_effect_list]

// 0
array_push(global.uncommon_citrine_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_citrine_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_citrine_locales_health_list,2)
array_push(global.uncommon_citrine_locales_channel_list,2)
array_push(global.uncommon_citrine_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_citrine_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_citrine_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_citrine_locales_health_list,2)
array_push(global.uncommon_citrine_locales_channel_list,2)
array_push(global.uncommon_citrine_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_citrine_locales_sprite_list,s_wasteland)
array_push(global.uncommon_citrine_locales_art_list,s_wasteland_art)
array_push(global.uncommon_citrine_locales_health_list,2)
array_push(global.uncommon_citrine_locales_channel_list,3)
array_push(global.uncommon_citrine_locales_effect_list,obj_wasteland)

// Rare citrine locales

global.rare_citrine_locales_sprite_list = []
global.rare_citrine_locales_art_list = []
global.rare_citrine_locales_health_list = []
global.rare_citrine_locales_channel_list = []
global.rare_citrine_locales_effect_list = []

global.rare_citrine_locales_list = [global.rare_citrine_locales_sprite_list,global.rare_citrine_locales_art_list,
global.rare_citrine_locales_health_list, global.rare_citrine_locales_channel_list, global.rare_citrine_locales_effect_list]

// 0
array_push(global.rare_citrine_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_citrine_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_citrine_locales_health_list,5)
array_push(global.rare_citrine_locales_channel_list,3)
array_push(global.rare_citrine_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_citrine_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_citrine_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_citrine_locales_health_list,4)
array_push(global.rare_citrine_locales_channel_list,3)
array_push(global.rare_citrine_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_citrine_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_citrine_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_citrine_locales_health_list,4)
array_push(global.rare_citrine_locales_channel_list,3)
array_push(global.rare_citrine_locales_effect_list,obj_trinket_vendor)

// Mythic citrine locales

global.mythic_citrine_locales_sprite_list = []
global.mythic_citrine_locales_art_list = []
global.mythic_citrine_locales_health_list = []
global.mythic_citrine_locales_channel_list = []
global.mythic_citrine_locales_effect_list = []

global.mythic_citrine_locales_list = [global.mythic_citrine_locales_sprite_list,global.mythic_citrine_locales_art_list,
global.mythic_citrine_locales_health_list, global.mythic_citrine_locales_channel_list, global.mythic_citrine_locales_effect_list]

// 0
array_push(global.mythic_citrine_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_citrine_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_citrine_locales_health_list,6)
array_push(global.mythic_citrine_locales_channel_list,3)
array_push(global.mythic_citrine_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_citrine_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_citrine_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_citrine_locales_health_list,6)
array_push(global.mythic_citrine_locales_channel_list,2)
array_push(global.mythic_citrine_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_citrine_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_citrine_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_citrine_locales_health_list,8)
array_push(global.mythic_citrine_locales_channel_list,3)
array_push(global.mythic_citrine_locales_effect_list,obj_mirror_prison)

// Legendary citrine locales

global.legendary_citrine_locales_sprite_list = []
global.legendary_citrine_locales_art_list = []
global.legendary_citrine_locales_health_list = []
global.legendary_citrine_locales_channel_list = []
global.legendary_citrine_locales_effect_list = []

global.legendary_citrine_locales_list = [global.legendary_citrine_locales_sprite_list,global.legendary_citrine_locales_art_list,
global.legendary_citrine_locales_health_list, global.legendary_citrine_locales_channel_list, global.legendary_citrine_locales_effect_list]

// 0
array_push(global.legendary_citrine_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_citrine_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_citrine_locales_health_list,6)
array_push(global.legendary_citrine_locales_channel_list,1)
array_push(global.legendary_citrine_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_citrine_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_citrine_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_citrine_locales_health_list,10)
array_push(global.legendary_citrine_locales_channel_list,5)
array_push(global.legendary_citrine_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_citrine_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_citrine_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_citrine_locales_health_list,6)
array_push(global.legendary_citrine_locales_channel_list,4)
array_push(global.legendary_citrine_locales_effect_list,obj_ravenmoor)

// citrine spells ============================================================================
// [0][5][1][0]  sprite = 0, art = 1, effect = 2

// Common citrine spells

global.common_citrine_spells_sprite_list = []
global.common_citrine_spells_art_list = []
global.common_citrine_spells_effect_list = []

global.common_citrine_spells_list = [global.common_citrine_spells_sprite_list,global.common_citrine_spells_art_list,global.common_citrine_spells_effect_list]

// 0 
array_push(global.common_citrine_spells_sprite_list,s_fanaticism)
array_push(global.common_citrine_spells_art_list,s_fanaticism_art)
array_push(global.common_citrine_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_citrine_spells_sprite_list,s_backstab)
array_push(global.common_citrine_spells_art_list,s_backstab_art)
array_push(global.common_citrine_spells_effect_list,obj_backstab)

// 2
array_push(global.common_citrine_spells_sprite_list,s_consumed)
array_push(global.common_citrine_spells_art_list,s_consumed_art)
array_push(global.common_citrine_spells_effect_list,obj_consumed)

// Uncommon citrine spells

global.uncommon_citrine_spells_sprite_list = []
global.uncommon_citrine_spells_art_list = []
global.uncommon_citrine_spells_effect_list = []

global.uncommon_citrine_spells_list = [global.uncommon_citrine_spells_sprite_list,global.uncommon_citrine_spells_art_list,global.uncommon_citrine_spells_effect_list]

// 0 
array_push(global.uncommon_citrine_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_citrine_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_citrine_spells_sprite_list,s_tithes)
array_push(global.uncommon_citrine_spells_art_list,s_tithes_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_citrine_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_citrine_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_citrine_spells_effect_list,obj_restoration_effort)

// Rare citrine spells

global.rare_citrine_spells_sprite_list = []
global.rare_citrine_spells_art_list = []
global.rare_citrine_spells_effect_list = []

global.rare_citrine_spells_list = [global.rare_citrine_spells_sprite_list,global.rare_citrine_spells_art_list,global.rare_citrine_spells_effect_list]

// 0 
array_push(global.rare_citrine_spells_sprite_list,s_mirrorspell)
array_push(global.rare_citrine_spells_art_list,s_mirrorspell_art)
array_push(global.rare_citrine_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_citrine_spells_sprite_list,s_subjugate)
array_push(global.rare_citrine_spells_art_list,s_subjugate_art)
array_push(global.rare_citrine_spells_effect_list,obj_subjugate)

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
array_push(global.mythic_citrine_spells_sprite_list,s_crumble)
array_push(global.mythic_citrine_spells_art_list,s_crumble_art)
array_push(global.mythic_citrine_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_citrine_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_citrine_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_citrine_spells_effect_list,obj_dark_reflection)

// 2
array_push(global.mythic_citrine_spells_sprite_list,s_excommunicate)
array_push(global.mythic_citrine_spells_art_list,s_excommunicate_art)
array_push(global.mythic_citrine_spells_effect_list,obj_excommunicate)

// Legendary citrine spells

global.legendary_citrine_spells_sprite_list = []
global.legendary_citrine_spells_art_list = []
global.legendary_citrine_spells_effect_list = []

global.legendary_citrine_spells_list = [global.legendary_citrine_spells_sprite_list,global.legendary_citrine_spells_art_list,global.legendary_citrine_spells_effect_list]

// 0 
array_push(global.legendary_citrine_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_citrine_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_citrine_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_citrine_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_citrine_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_citrine_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_citrine_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_citrine_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_citrine_spells_effect_list,obj_return_from_beyond)

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
array_push(global.common_opal_locales_sprite_list,s_fetid_sewer)
array_push(global.common_opal_locales_art_list,s_fetid_sewer_art)
array_push(global.common_opal_locales_health_list,1)
array_push(global.common_opal_locales_channel_list,1)
array_push(global.common_opal_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_opal_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_opal_locales_art_list,s_decrepit_chapel_art)
array_push(global.common_opal_locales_health_list,1)
array_push(global.common_opal_locales_channel_list,2)
array_push(global.common_opal_locales_effect_list,obj_decrepit_chapel)

// Uncommon opal locales

global.uncommon_opal_locales_sprite_list = []
global.uncommon_opal_locales_art_list = []
global.uncommon_opal_locales_health_list = []
global.uncommon_opal_locales_channel_list = []
global.uncommon_opal_locales_effect_list = []

global.uncommon_opal_locales_list = [global.uncommon_opal_locales_sprite_list,global.uncommon_opal_locales_art_list,
global.uncommon_opal_locales_health_list, global.uncommon_opal_locales_channel_list, global.uncommon_opal_locales_effect_list]

// 0
array_push(global.uncommon_opal_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_opal_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_opal_locales_health_list,2)
array_push(global.uncommon_opal_locales_channel_list,2)
array_push(global.uncommon_opal_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_opal_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_opal_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_opal_locales_health_list,2)
array_push(global.uncommon_opal_locales_channel_list,2)
array_push(global.uncommon_opal_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_opal_locales_sprite_list,s_wasteland)
array_push(global.uncommon_opal_locales_art_list,s_wasteland_art)
array_push(global.uncommon_opal_locales_health_list,2)
array_push(global.uncommon_opal_locales_channel_list,3)
array_push(global.uncommon_opal_locales_effect_list,obj_wasteland)

// Rare opal locales

global.rare_opal_locales_sprite_list = []
global.rare_opal_locales_art_list = []
global.rare_opal_locales_health_list = []
global.rare_opal_locales_channel_list = []
global.rare_opal_locales_effect_list = []

global.rare_opal_locales_list = [global.rare_opal_locales_sprite_list,global.rare_opal_locales_art_list,
global.rare_opal_locales_health_list, global.rare_opal_locales_channel_list, global.rare_opal_locales_effect_list]

// 0
array_push(global.rare_opal_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_opal_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_opal_locales_health_list,5)
array_push(global.rare_opal_locales_channel_list,3)
array_push(global.rare_opal_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_opal_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_opal_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_opal_locales_health_list,4)
array_push(global.rare_opal_locales_channel_list,3)
array_push(global.rare_opal_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_opal_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_opal_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_opal_locales_health_list,4)
array_push(global.rare_opal_locales_channel_list,3)
array_push(global.rare_opal_locales_effect_list,obj_trinket_vendor)

// Mythic opal locales

global.mythic_opal_locales_sprite_list = []
global.mythic_opal_locales_art_list = []
global.mythic_opal_locales_health_list = []
global.mythic_opal_locales_channel_list = []
global.mythic_opal_locales_effect_list = []

global.mythic_opal_locales_list = [global.mythic_opal_locales_sprite_list,global.mythic_opal_locales_art_list,
global.mythic_opal_locales_health_list, global.mythic_opal_locales_channel_list, global.mythic_opal_locales_effect_list]

// 0
array_push(global.mythic_opal_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_opal_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_opal_locales_health_list,6)
array_push(global.mythic_opal_locales_channel_list,3)
array_push(global.mythic_opal_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_opal_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_opal_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_opal_locales_health_list,6)
array_push(global.mythic_opal_locales_channel_list,2)
array_push(global.mythic_opal_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_opal_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_opal_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_opal_locales_health_list,8)
array_push(global.mythic_opal_locales_channel_list,3)
array_push(global.mythic_opal_locales_effect_list,obj_mirror_prison)

// Legendary opal locales

global.legendary_opal_locales_sprite_list = []
global.legendary_opal_locales_art_list = []
global.legendary_opal_locales_health_list = []
global.legendary_opal_locales_channel_list = []
global.legendary_opal_locales_effect_list = []

global.legendary_opal_locales_list = [global.legendary_opal_locales_sprite_list,global.legendary_opal_locales_art_list,
global.legendary_opal_locales_health_list, global.legendary_opal_locales_channel_list, global.legendary_opal_locales_effect_list]

// 0
array_push(global.legendary_opal_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_opal_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_opal_locales_health_list,6)
array_push(global.legendary_opal_locales_channel_list,1)
array_push(global.legendary_opal_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_opal_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_opal_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_opal_locales_health_list,10)
array_push(global.legendary_opal_locales_channel_list,5)
array_push(global.legendary_opal_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_opal_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_opal_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_opal_locales_health_list,6)
array_push(global.legendary_opal_locales_channel_list,4)
array_push(global.legendary_opal_locales_effect_list,obj_ravenmoor)

// opal spells ============================================================================
// [0][6][1][0]  sprite = 0, art = 1, effect = 2

// Common opal spells

global.common_opal_spells_sprite_list = []
global.common_opal_spells_art_list = []
global.common_opal_spells_effect_list = []

global.common_opal_spells_list = [global.common_opal_spells_sprite_list,global.common_opal_spells_art_list,global.common_opal_spells_effect_list]

// 0 
array_push(global.common_opal_spells_sprite_list,s_fanaticism)
array_push(global.common_opal_spells_art_list,s_fanaticism_art)
array_push(global.common_opal_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_opal_spells_sprite_list,s_backstab)
array_push(global.common_opal_spells_art_list,s_backstab_art)
array_push(global.common_opal_spells_effect_list,obj_backstab)

// 2
array_push(global.common_opal_spells_sprite_list,s_consumed)
array_push(global.common_opal_spells_art_list,s_consumed_art)
array_push(global.common_opal_spells_effect_list,obj_consumed)

// Uncommon opal spells

global.uncommon_opal_spells_sprite_list = []
global.uncommon_opal_spells_art_list = []
global.uncommon_opal_spells_effect_list = []

global.uncommon_opal_spells_list = [global.uncommon_opal_spells_sprite_list,global.uncommon_opal_spells_art_list,global.uncommon_opal_spells_effect_list]

// 0 
array_push(global.uncommon_opal_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_opal_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_opal_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_opal_spells_sprite_list,s_tithes)
array_push(global.uncommon_opal_spells_art_list,s_tithes_art)
array_push(global.uncommon_opal_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_opal_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_opal_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_opal_spells_effect_list,obj_restoration_effort)

// Rare opal spells

global.rare_opal_spells_sprite_list = []
global.rare_opal_spells_art_list = []
global.rare_opal_spells_effect_list = []

global.rare_opal_spells_list = [global.rare_opal_spells_sprite_list,global.rare_opal_spells_art_list,global.rare_opal_spells_effect_list]

// 0 
array_push(global.rare_opal_spells_sprite_list,s_mirrorspell)
array_push(global.rare_opal_spells_art_list,s_mirrorspell_art)
array_push(global.rare_opal_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_opal_spells_sprite_list,s_subjugate)
array_push(global.rare_opal_spells_art_list,s_subjugate_art)
array_push(global.rare_opal_spells_effect_list,obj_subjugate)

// 2
array_push(global.rare_opal_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_opal_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_opal_spells_effect_list,obj_vossen_ritual)

// Mythic opal spells

global.mythic_opal_spells_sprite_list = []
global.mythic_opal_spells_art_list = []
global.mythic_opal_spells_effect_list = []

global.mythic_opal_spells_list = [global.mythic_opal_spells_sprite_list,global.mythic_opal_spells_art_list,global.mythic_opal_spells_effect_list]

// 0 
array_push(global.mythic_opal_spells_sprite_list,s_crumble)
array_push(global.mythic_opal_spells_art_list,s_crumble_art)
array_push(global.mythic_opal_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_opal_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_opal_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_opal_spells_effect_list,obj_dark_reflection)

// 2
array_push(global.mythic_opal_spells_sprite_list,s_excommunicate)
array_push(global.mythic_opal_spells_art_list,s_excommunicate_art)
array_push(global.mythic_opal_spells_effect_list,obj_excommunicate)

// Legendary opal spells

global.legendary_opal_spells_sprite_list = []
global.legendary_opal_spells_art_list = []
global.legendary_opal_spells_effect_list = []

global.legendary_opal_spells_list = [global.legendary_opal_spells_sprite_list,global.legendary_opal_spells_art_list,global.legendary_opal_spells_effect_list]

// 0 
array_push(global.legendary_opal_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_opal_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_opal_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_opal_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_opal_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_opal_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_opal_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_opal_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_opal_spells_effect_list,obj_return_from_beyond)

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
array_push(global.common_amethyst_locales_sprite_list,s_fetid_sewer)
array_push(global.common_amethyst_locales_art_list,s_fetid_sewer_art)
array_push(global.common_amethyst_locales_health_list,1)
array_push(global.common_amethyst_locales_channel_list,1)
array_push(global.common_amethyst_locales_effect_list,obj_fetid_sewer)

// 2
array_push(global.common_amethyst_locales_sprite_list,s_decrepit_chapel)
array_push(global.common_amethyst_locales_art_list,s_decrepit_chapel_art)
array_push(global.common_amethyst_locales_health_list,1)
array_push(global.common_amethyst_locales_channel_list,2)
array_push(global.common_amethyst_locales_effect_list,obj_decrepit_chapel)

// Uncommon amethyst locales

global.uncommon_amethyst_locales_sprite_list = []
global.uncommon_amethyst_locales_art_list = []
global.uncommon_amethyst_locales_health_list = []
global.uncommon_amethyst_locales_channel_list = []
global.uncommon_amethyst_locales_effect_list = []

global.uncommon_amethyst_locales_list = [global.uncommon_amethyst_locales_sprite_list,global.uncommon_amethyst_locales_art_list,
global.uncommon_amethyst_locales_health_list, global.uncommon_amethyst_locales_channel_list, global.uncommon_amethyst_locales_effect_list]

// 0
array_push(global.uncommon_amethyst_locales_sprite_list,s_haunted_manor)
array_push(global.uncommon_amethyst_locales_art_list,s_haunted_manor_art)
array_push(global.uncommon_amethyst_locales_health_list,2)
array_push(global.uncommon_amethyst_locales_channel_list,2)
array_push(global.uncommon_amethyst_locales_effect_list,obj_haunted_manor)

// 1
array_push(global.uncommon_amethyst_locales_sprite_list,s_starlit_sanctuary)
array_push(global.uncommon_amethyst_locales_art_list,s_starlit_sanctuary_art)
array_push(global.uncommon_amethyst_locales_health_list,2)
array_push(global.uncommon_amethyst_locales_channel_list,2)
array_push(global.uncommon_amethyst_locales_effect_list,obj_starlit_sanctuary)

// 2
array_push(global.uncommon_amethyst_locales_sprite_list,s_wasteland)
array_push(global.uncommon_amethyst_locales_art_list,s_wasteland_art)
array_push(global.uncommon_amethyst_locales_health_list,2)
array_push(global.uncommon_amethyst_locales_channel_list,3)
array_push(global.uncommon_amethyst_locales_effect_list,obj_wasteland)

// Rare amethyst locales

global.rare_amethyst_locales_sprite_list = []
global.rare_amethyst_locales_art_list = []
global.rare_amethyst_locales_health_list = []
global.rare_amethyst_locales_channel_list = []
global.rare_amethyst_locales_effect_list = []

global.rare_amethyst_locales_list = [global.rare_amethyst_locales_sprite_list,global.rare_amethyst_locales_art_list,
global.rare_amethyst_locales_health_list, global.rare_amethyst_locales_channel_list, global.rare_amethyst_locales_effect_list]

// 0
array_push(global.rare_amethyst_locales_sprite_list,s_ravenmoor_alley)
array_push(global.rare_amethyst_locales_art_list,s_ravenmoor_alley_art)
array_push(global.rare_amethyst_locales_health_list,5)
array_push(global.rare_amethyst_locales_channel_list,3)
array_push(global.rare_amethyst_locales_effect_list,obj_ravenmoor_alley)

// 1
array_push(global.rare_amethyst_locales_sprite_list,s_mist_swept_highlands)
array_push(global.rare_amethyst_locales_art_list,s_mist_swept_highlands_art)
array_push(global.rare_amethyst_locales_health_list,4)
array_push(global.rare_amethyst_locales_channel_list,3)
array_push(global.rare_amethyst_locales_effect_list,obj_mist_swept_highlands)

// 2
array_push(global.rare_amethyst_locales_sprite_list,s_trinket_vendor)
array_push(global.rare_amethyst_locales_art_list,s_trinket_vendor_art)
array_push(global.rare_amethyst_locales_health_list,4)
array_push(global.rare_amethyst_locales_channel_list,3)
array_push(global.rare_amethyst_locales_effect_list,obj_trinket_vendor)

// Mythic amethyst locales

global.mythic_amethyst_locales_sprite_list = []
global.mythic_amethyst_locales_art_list = []
global.mythic_amethyst_locales_health_list = []
global.mythic_amethyst_locales_channel_list = []
global.mythic_amethyst_locales_effect_list = []

global.mythic_amethyst_locales_list = [global.mythic_amethyst_locales_sprite_list,global.mythic_amethyst_locales_art_list,
global.mythic_amethyst_locales_health_list, global.mythic_amethyst_locales_channel_list, global.mythic_amethyst_locales_effect_list]

// 0
array_push(global.mythic_amethyst_locales_sprite_list,s_grand_ravenmoor_church)
array_push(global.mythic_amethyst_locales_art_list,s_grand_ravenmoor_church_art)
array_push(global.mythic_amethyst_locales_health_list,6)
array_push(global.mythic_amethyst_locales_channel_list,3)
array_push(global.mythic_amethyst_locales_effect_list,obj_grand_ravenmoor_church)

// 1
array_push(global.mythic_amethyst_locales_sprite_list,s_ravenmoor_market)
array_push(global.mythic_amethyst_locales_art_list,s_ravenmoor_market_art)
array_push(global.mythic_amethyst_locales_health_list,6)
array_push(global.mythic_amethyst_locales_channel_list,2)
array_push(global.mythic_amethyst_locales_effect_list,obj_ravenmoor_market)

// 2
array_push(global.mythic_amethyst_locales_sprite_list,s_mirror_prison)
array_push(global.mythic_amethyst_locales_art_list,s_mirror_prison_art)
array_push(global.mythic_amethyst_locales_health_list,8)
array_push(global.mythic_amethyst_locales_channel_list,3)
array_push(global.mythic_amethyst_locales_effect_list,obj_mirror_prison)

// Legendary amethyst locales

global.legendary_amethyst_locales_sprite_list = []
global.legendary_amethyst_locales_art_list = []
global.legendary_amethyst_locales_health_list = []
global.legendary_amethyst_locales_channel_list = []
global.legendary_amethyst_locales_effect_list = []

global.legendary_amethyst_locales_list = [global.legendary_amethyst_locales_sprite_list,global.legendary_amethyst_locales_art_list,
global.legendary_amethyst_locales_health_list, global.legendary_amethyst_locales_channel_list, global.legendary_amethyst_locales_effect_list]

// 0
array_push(global.legendary_amethyst_locales_sprite_list,s_vossen_gazing_pool)
array_push(global.legendary_amethyst_locales_art_list,s_vossen_gazing_pool_art)
array_push(global.legendary_amethyst_locales_health_list,6)
array_push(global.legendary_amethyst_locales_channel_list,1)
array_push(global.legendary_amethyst_locales_effect_list,obj_vossen_gazing_pool)

// 1
array_push(global.legendary_amethyst_locales_sprite_list,s_abyss_beyond)
array_push(global.legendary_amethyst_locales_art_list,s_abyss_beyond_art)
array_push(global.legendary_amethyst_locales_health_list,10)
array_push(global.legendary_amethyst_locales_channel_list,5)
array_push(global.legendary_amethyst_locales_effect_list,obj_abyss_beyond)

// 2
array_push(global.legendary_amethyst_locales_sprite_list,s_ravenmoor)
array_push(global.legendary_amethyst_locales_art_list,s_ravenmoor_art)
array_push(global.legendary_amethyst_locales_health_list,6)
array_push(global.legendary_amethyst_locales_channel_list,4)
array_push(global.legendary_amethyst_locales_effect_list,obj_ravenmoor)

// amethyst spells ============================================================================
// [0][7][1][0]  sprite = 0, art = 1, effect = 2

// Common amethyst spells

global.common_amethyst_spells_sprite_list = []
global.common_amethyst_spells_art_list = []
global.common_amethyst_spells_effect_list = []

global.common_amethyst_spells_list = [global.common_amethyst_spells_sprite_list,global.common_amethyst_spells_art_list,global.common_amethyst_spells_effect_list]

// 0 
array_push(global.common_amethyst_spells_sprite_list,s_fanaticism)
array_push(global.common_amethyst_spells_art_list,s_fanaticism_art)
array_push(global.common_amethyst_spells_effect_list,obj_fanaticism)

// 1
array_push(global.common_amethyst_spells_sprite_list,s_backstab)
array_push(global.common_amethyst_spells_art_list,s_backstab_art)
array_push(global.common_amethyst_spells_effect_list,obj_backstab)

// 2
array_push(global.common_amethyst_spells_sprite_list,s_consumed)
array_push(global.common_amethyst_spells_art_list,s_consumed_art)
array_push(global.common_amethyst_spells_effect_list,obj_consumed)

// Uncommon amethyst spells

global.uncommon_amethyst_spells_sprite_list = []
global.uncommon_amethyst_spells_art_list = []
global.uncommon_amethyst_spells_effect_list = []

global.uncommon_amethyst_spells_list = [global.uncommon_amethyst_spells_sprite_list,global.uncommon_amethyst_spells_art_list,global.uncommon_amethyst_spells_effect_list]

// 0 
array_push(global.uncommon_amethyst_spells_sprite_list,s_starry_vision)
array_push(global.uncommon_amethyst_spells_art_list,s_starry_vision_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_starry_vision)

// 1
array_push(global.uncommon_amethyst_spells_sprite_list,s_tithes)
array_push(global.uncommon_amethyst_spells_art_list,s_tithes_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_tithes)

// 2
array_push(global.uncommon_amethyst_spells_sprite_list,s_restoration_effort)
array_push(global.uncommon_amethyst_spells_art_list,s_restoration_effort_art)
array_push(global.uncommon_amethyst_spells_effect_list,obj_restoration_effort)

// Rare amethyst spells

global.rare_amethyst_spells_sprite_list = []
global.rare_amethyst_spells_art_list = []
global.rare_amethyst_spells_effect_list = []

global.rare_amethyst_spells_list = [global.rare_amethyst_spells_sprite_list,global.rare_amethyst_spells_art_list,global.rare_amethyst_spells_effect_list]

// 0 
array_push(global.rare_amethyst_spells_sprite_list,s_mirrorspell)
array_push(global.rare_amethyst_spells_art_list,s_mirrorspell_art)
array_push(global.rare_amethyst_spells_effect_list,obj_mirrorspell)

// 1
array_push(global.rare_amethyst_spells_sprite_list,s_subjugate)
array_push(global.rare_amethyst_spells_art_list,s_subjugate_art)
array_push(global.rare_amethyst_spells_effect_list,obj_subjugate)

// 2
array_push(global.rare_amethyst_spells_sprite_list,s_vossen_ritual)
array_push(global.rare_amethyst_spells_art_list,s_vossen_ritual_art)
array_push(global.rare_amethyst_spells_effect_list,obj_vossen_ritual)

// Mythic amethyst spells

global.mythic_amethyst_spells_sprite_list = []
global.mythic_amethyst_spells_art_list = []
global.mythic_amethyst_spells_effect_list = []

global.mythic_amethyst_spells_list = [global.mythic_amethyst_spells_sprite_list,global.mythic_amethyst_spells_art_list,global.mythic_amethyst_spells_effect_list]

// 0 
array_push(global.mythic_amethyst_spells_sprite_list,s_crumble)
array_push(global.mythic_amethyst_spells_art_list,s_crumble_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_crumble)

// 1
array_push(global.mythic_amethyst_spells_sprite_list,s_dark_reflection)
array_push(global.mythic_amethyst_spells_art_list,s_dark_reflection_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_dark_reflection)

// 2
array_push(global.mythic_amethyst_spells_sprite_list,s_excommunicate)
array_push(global.mythic_amethyst_spells_art_list,s_excommunicate_art)
array_push(global.mythic_amethyst_spells_effect_list,obj_excommunicate)

// Legendary amethyst spells

global.legendary_amethyst_spells_sprite_list = []
global.legendary_amethyst_spells_art_list = []
global.legendary_amethyst_spells_effect_list = []

global.legendary_amethyst_spells_list = [global.legendary_amethyst_spells_sprite_list,global.legendary_amethyst_spells_art_list,global.legendary_amethyst_spells_effect_list]

// 0 
array_push(global.legendary_amethyst_spells_sprite_list,s_abyssal_descent)
array_push(global.legendary_amethyst_spells_art_list,s_abyssal_descent_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_abyssal_descent)

// 1
array_push(global.legendary_amethyst_spells_sprite_list,s_shelter_in_mist)
array_push(global.legendary_amethyst_spells_art_list,s_shelter_in_mist_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_shelter_in_mist)

// 2
array_push(global.legendary_amethyst_spells_sprite_list,s_return_from_beyond)
array_push(global.legendary_amethyst_spells_art_list,s_return_from_beyond_art)
array_push(global.legendary_amethyst_spells_effect_list,obj_return_from_beyond)

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