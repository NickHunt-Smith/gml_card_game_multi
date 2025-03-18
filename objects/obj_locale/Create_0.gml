/// @description Initialise our moused variable
// This will hold wether or not the cursor is meeting our bounding box.
moused = false;

// This is used to hold whether or not our current card can even be grabbed.
grabbable = true;

// This is used to set the scale of the border draw.
image_xscale = 0.5;
image_yscale = 0.5;
image_alpha = 0;
big_mode = false;
draft_mode = true;
//this_drafted = false;
x_start = 1520;
y_start = 1490;
x_hand = 1520;
order_in_hand = 1;
y_hand = 1590;

yrotation = 0;
xrotation = 0;
max_angle = 15;

lerp_amount = 0.65;
overwriting = false;
playing = false;
play_element_seq = noone;
sprite_gap = 0;
play_scale = 1;
play_scale_stats = 1;
alpha = 0;

// Set what PFX we need.
pfx_border_top = Ps_Fire_Line_top;
border_x_top = 0
border_y_top = -280

pfx_border_right = Ps_Fire_Line_right;
border_x_right = 224
border_y_right = 0

pfx_border_bottom = Ps_Fire_Line_bottom;
border_x_bottom = 0
border_y_bottom = 280

pfx_border_left = Ps_Fire_Line_left;
border_x_left = -224
border_y_left = 0

border_active = false

locale_highlight_left = false
locale_highlight_left_middle = false
locale_highlight_right_middle = false
locale_highlight_right = false

played_position = "left_player";
locale_lane_x = 0;
locale_lane_y = 844;

rarity = 1;
element = 1;
card_type = 1;
card_attr = 1;
card_index = 1;

created_eff = noone;
tooltip_created = false;
tooltip_extra = false;
tooltip_text = "";
tooltip_text_plural = false;
tooltip_counter = 0;