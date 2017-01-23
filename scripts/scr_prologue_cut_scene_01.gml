//testing cut scenes
///Test talking
talkarray[0] = "Auno#I'm gonna miss my queue!";
talkarray2[0] = "Auno#I'd better hurry...";
speedarray[0] = 2;
speedarray2[0] = 2;
characterarray[0] = spr_auno_talk_test;
characterarray2[0] = spr_auno_talk_test;
spritesidearray[0] = 0;
spritesidearray2[0] = 0;

if (hasSpeech[0]) {
    scr_text(talkarray, speedarray, view_xview[0], view_yview[0], array_length_1d(talkarray) - 1, characterarray, spritesidearray, obj_prologue_cut_scene_01_init, 0);
} else if (hasSpeech[1]) {
    scr_text(talkarray2, speedarray2, view_xview[0], view_yview[0], array_length_1d(talkarray2) - 1, characterarray2, spritesidearray2, obj_prologue_cut_scene_01_init, 1);
} else {   
    with (obj_auno) {  
        if (point_distance(x, y, 1015, 480) > 5) {
            move_towards_point(1015, 480, 6);             
        } else { 
            speed = 0;
            obj_prologue_cut_scene_01_init.isActive = 0;
            state = states.normal;
        }
    }
}

