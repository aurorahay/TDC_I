//testing cut scenes
///Test talking
talkarray[0] = "Auno#I'm gonna miss my queue!";
speedarray[0] = 2;
characterarray[0] = spr_auno_talk_test;
spritesidearray[0] = 0;

if (hasSpeech[0]) {
    scr_text(talkarray, speedarray, view_xview[0], view_yview[0], array_length_1d(talkarray) - 1, characterarray, spritesidearray, obj_test_cut_scene, 0);
} else {   
    with (obj_auno) {     
     
        if (point_distance(x, y, 865, 80) > 5) {
            move_towards_point(865, 80, 6); 
            
        } else {                   
            speed = 0;
            
            ///Test talking
            talkarray[0] = "Auno#Show time!";
            speedarray[0] = 2;
            characterarray[0] = spr_auno_talk_test;
            spritesidearray[0] = 0;
            
            if (obj_test_cut_scene.hasSpeech[1]) {
                scr_text(talkarray, speedarray, view_xview[0], view_yview[0], array_length_1d(talkarray) - 1, characterarray, spritesidearray, obj_test_cut_scene, 1);
            } else {
                obj_test_cut_scene.isActive = 0;
                state = states.normal;
            }
        }
    }
}
   



