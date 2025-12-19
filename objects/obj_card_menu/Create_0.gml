image_xscale = 0.1;
image_yscale = 0.1;
image_alpha = 0;

yrotation = 0;
xrotation = 0;
max_angle = 3;

var rarity = irandom(4);
var element = irandom(7);
var card_type = irandom(1);
var card_index = irandom(2);
sprite_index = global.rarity_list[rarity][element][card_type][0][card_index];