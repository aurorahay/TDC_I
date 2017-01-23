//scr_text(["Texts"], [speeds], x, y, talkcount, [sprites], [side of where sprite is drawn (0 is left, 1 is right)]);

var current_view;
    current_view = 0;
    
text = instance_create(argument2, argument3, obj_text);

with (text) {
    objectId = argument7;
    cutSceneTextId = argument8;
    padding = 16;
    maxlength = view_wview[current_view];
    text = argument0;
    spdcount = argument1;
    spd = spdcount[0];
    font = fnt_01;
    talkcount = argument4;
    spr_characters = argument5;
    spr_character = spr_characters[0];
    spr_character_sides = argument6;
    spr_character_side = spr_character_sides[0];
    
    text_length = string_length(text[0]);    
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text[0], font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text[0], font_size + (font_size/2), maxlength);
    
    //boxwidth = text_width + (padding * 2);
    //boxheight = text_height + (padding * 2);
    boxwidth = view_wview[current_view];
    boxheight = 144;    
    
}
