talkarray[0] = "Auno#Ow! Oh...";
talkarray2[0] = "Auno#Whoa...";
talkarray3[0] = "Auno#Where am I?";
speedarray[0] = 2;
speedarray2[0] = 2;
speedarray3[0] = 2;
characterarray[0] = spr_auno_talk_test;
characterarray2[0] = spr_auno_talk_test;
characterarray3[0] = spr_auno_talk_test;
spritesidearray[0] = 0;
spritesidearray2[0] = 0;
spritesidearray3[0] = 0;

if (hasSpeech[0]) {
    scr_text(talkarray, speedarray, view_xview[0], view_yview[0], array_length_1d(talkarray) - 1, characterarray, spritesidearray, obj_auno_ch_01_01_talk_01, 0);
} else if (hasSpeech[1]) {
    scr_text(talkarray2, speedarray2, view_xview[0], view_yview[0], array_length_1d(talkarray2) - 1, characterarray2, spritesidearray2, obj_auno_ch_01_01_talk_01, 1);
} else if (hasSpeech[2]) {
    scr_text(talkarray3, speedarray3, view_xview[0], view_yview[0], array_length_1d(talkarray3) - 1, characterarray3, spritesidearray3, obj_auno_ch_01_01_talk_01, 2);
} else {
    with (obj_auno) {
        obj_auno_ch_01_01_talk_01.isActive = 0;
        state = states.normal;        
    }
}
