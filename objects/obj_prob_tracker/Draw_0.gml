draw_sprite_ext(s_opp_cards_tooltip,0,x-49,y-47,0.865,0.658,0,c_white,0.7);

draw_set_font(Empower_font)

// Rarities
draw_sprite_ext(s_common_centred,0,x,y,0.2,0.2,0,c_white,1)
draw_text_ext_transformed_colour(x+percent_separation,y-16,string(global.rarity_dist[0]) + "%",0,100,0.6,0.6,0,c_white,c_white,c_white,c_white,1);

draw_sprite_ext(s_uncommon_centred,0,x+rarity_separation,y,0.2,0.2,0,c_white,1)
draw_text_ext_transformed_colour(x+rarity_separation+percent_separation,y-16,string(global.rarity_dist[1]-global.rarity_dist[0]) + "%",0,100,0.6,0.6,0,c_lime,c_lime,c_lime,c_lime,1);

draw_sprite_ext(s_rare_centred,0,x+2*rarity_separation,y,0.2,0.2,0,c_white,1)
draw_text_ext_transformed_colour(x+2*rarity_separation+percent_separation,y-16,string(global.rarity_dist[2]-global.rarity_dist[1]) + "%",0,100,0.6,0.6,0,c_blue,c_blue,c_blue,c_blue,1);

draw_sprite_ext(s_mythic_centred,0,x+3*rarity_separation,y,0.2,0.2,0,c_white,1)
draw_text_ext_transformed_colour(x+3*rarity_separation+percent_separation,y-16,string(global.rarity_dist[3]-global.rarity_dist[2]) + "%",0,100,0.6,0.6,0,c_purple,c_purple,c_purple,c_purple,1);

draw_sprite_ext(s_legendary_centred,0,x+4*rarity_separation,y,0.2,0.2,0,c_white,1)
draw_text_ext_transformed_colour(x+4*rarity_separation+percent_separation,y-16,string(global.rarity_dist[4]-global.rarity_dist[3]) + "%",0,100,0.6,0.6,0,c_orange,c_orange,c_orange,c_orange,1);

//Elements
draw_sprite_ext(s_ruby,0,x,y+row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+percent_separation_element,y+row_separation-16,string_format(global.element_dist[0],1,1) + "%",0,100,0.6,0.6,0,c_red,c_red,c_red,c_red,1);

draw_sprite_ext(s_pearl,0,x+element_separation,y+row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+element_separation+percent_separation_element,y+row_separation-16,string_format(global.element_dist[1]-global.element_dist[0],1,1) + "%",0,100,0.6,0.6,0,c_aqua,c_aqua,c_aqua,c_aqua,1);

draw_sprite_ext(s_onyx,0,x+2*element_separation,y+row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+2*element_separation+percent_separation_element,y+row_separation-16,string_format(global.element_dist[2]-global.element_dist[1],1,1) + "%",0,100,0.6,0.6,0,c_black,c_black,c_black,c_black,1);

draw_sprite_ext(s_sapphire,0,x+3*element_separation,y+row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+3*element_separation+percent_separation_element,y+row_separation-16,string_format(global.element_dist[3]-global.element_dist[2],1,1) + "%",0,100,0.6,0.6,0,c_blue,c_blue,c_blue,c_blue,1);

draw_sprite_ext(s_emerald,0,x,y+2*row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+percent_separation_element,y+2*row_separation-16,string_format(global.element_dist[4]-global.element_dist[3],1,1) + "%",0,100,0.6,0.6,0,c_lime,c_lime,c_lime,c_lime,1);

draw_sprite_ext(s_citrine,0,x+element_separation,y+2*row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+element_separation+percent_separation_element,y+2*row_separation-16,string_format(global.element_dist[5]-global.element_dist[4],1,1) + "%",0,100,0.6,0.6,0,c_orange,c_orange,c_orange,c_orange,1);

draw_sprite_ext(s_opal,0,x+2*element_separation,y+2*row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+2*element_separation+percent_separation_element,y+2*row_separation-16,string_format(global.element_dist[6]-global.element_dist[5],1,1) + "%",0,100,0.6,0.6,0,c_fuchsia,c_fuchsia,c_aqua,c_aqua,1);

draw_sprite_ext(s_amethyst,0,x+3*element_separation,y+2*row_separation,0.18,0.18,0,c_white,1)
draw_text_ext_transformed_colour(x+3*element_separation+percent_separation_element,y+2*row_separation-16,string_format(global.element_dist[7]-global.element_dist[6],1,1) + "%",0,100,0.6,0.6,0,c_purple,c_purple,c_purple,c_purple,1);