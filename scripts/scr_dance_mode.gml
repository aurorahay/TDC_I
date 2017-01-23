//goes on the dance meter object
scr_get_inputs();
if (dance_meter == 100) {
    if (key_talk) {
        obj_auno.state = states.normal;
        dance_battle.isActive = 0;    
        
        with (obj_dance_meter) {    
            instance_destroy();   
        } 
    } 
}

