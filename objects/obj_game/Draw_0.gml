/// @description Insert description here
// You can write your code in this editor

if reverse = false {
	increment = clamp(increment+0.1,0,448-138);
} else {
	increment = clamp(increment-0.1,0,448-138);
}

if increment = 448-138 {
	reverse = true;
}

if increment = 0 {
	reverse = false;
}

draw_sprite_part_ext(s_spell_zone,0,0,increment,831,138,1000,685,1.26,1,c_white,1);