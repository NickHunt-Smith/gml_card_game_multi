/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
emit_destroy = true;
draft_count = 0;
summon_cards = true;
switch_priority = false;
extra_opp_card = false;
depth = -900

sound_inst = audio_play_sound(snd_draft,10,false);

summon_whirlpool_1 = part_system_create(Ps_Portal_Spiral_Blue);
part_system_position(summon_whirlpool_1, 1150, 290);
part_system_depth(summon_whirlpool_1,-900);

summon_whirlpool_2 = part_system_create(Ps_Portal_Spiral_Blue);
part_system_position(summon_whirlpool_2, 1520, 290);
part_system_depth(summon_whirlpool_2,-900);

summon_whirlpool_3 = part_system_create(Ps_Portal_Spiral_Blue);
part_system_position(summon_whirlpool_3, 1890, 290);
part_system_depth(summon_whirlpool_3,-900);

sparkle_rain = part_system_create(Ps_Magic_Sparkle_Rain_Long);
part_system_position(sparkle_rain, 1520, 20);
part_system_depth(sparkle_rain,-900);

card_inst_1 = noone;
card_inst_2 = noone;
card_inst_3 = noone;

debug_test = false;

rarity_locked = false;
rarity_locked_i = 0;
element_locked = false;
element_locked_i = 0;
card_type_locked = false;
card_type_locked_i = 0;
