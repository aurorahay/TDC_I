///scr_text_engine(["text"], [speed], [sprites], [spritesides]);
textcontent = argument0;
spd = argument1;
characters = argument2;
spritesides = argument3;
var count = 0;
if (obj_auno.key_talk && obj_auno.state != states.talking) {
    if (distance_to_object(obj_auno) < 7) {
        obj_auno.state = states.talking;     
        scr_text(textcontent, spd, view_xview[0], view_yview[0], array_length_1d(textcontent) - 1, characters, spritesides, -1, -1);
    }
}

