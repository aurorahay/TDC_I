talkarray0[0] = "Auno#Oof!";
talkarray1[0] = "Auno#I'm so sorry!";
talkarray2[0] = "Auno#Uh...";
speedarray0[0] = 2;
speedarray1[0] = 2;
speedarray2[0] = 2;
characterarray0[0] = spr_auno_talk_test;
characterarray1[0] = spr_auno_talk_test;
characterarray2[0] = spr_auno_talk_test;
spritesidearray0[0] = 0;
spritesidearray1[0] = 0;
spritesidearray2[0] = 0;

if (hasSpeech[0]) {
    scr_text(talkarray0, speedarray0, view_xview[0], view_yview[0], array_length_1d(talkarray0) - 1, characterarray0, spritesidearray0, obj_auno_ch_01_01_talk_01, 0);
} else if (hasSpeech[1]) {
    scr_text(talkarray1, speedarray1, view_xview[0], view_yview[0], array_length_1d(talkarray1) - 1, characterarray1, spritesidearray1, obj_auno_ch_01_01_talk_01, 1);
} else if (hasSpeech[2]) {
    scr_text(talkarray2, speedarray2, view_xview[0], view_yview[0], array_length_1d(talkarray2) - 1, characterarray2, spritesidearray2, obj_auno_ch_01_01_talk_01, 2);
} else {
    with (obj_auno) {
        speed = 0;
        obj_auno_ch_01_01_talk_01.isActive = 0;
        state = states.normal;        
    }
}
