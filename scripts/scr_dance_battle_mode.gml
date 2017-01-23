scr_get_inputs();
if (dance_right || gp_dance_right) {
    show_debug_message("dance to the right");    
    dance_held += 1;
    if (dance_held < 10) {        
        scr_add_to_dance_meter(1);
    }
} else if (dance_left || gp_dance_left) {
    show_debug_message("dance to the left");
    dance_held += 1;
    if (dance_held < 10) {        
        scr_add_to_dance_meter(1);
    }
} else if (dance_down || gp_dance_down) {
    show_debug_message("get down, Auno!");  
    dance_held += 1;  
    if (dance_held < 10) {        
        scr_add_to_dance_meter(1);
    }
} else if (dance_up || gp_dance_up) {
    show_debug_message("gotta get up, Auno!");  
    dance_held += 1;  
    if (dance_held < 10) {        
        scr_add_to_dance_meter(1);
    }
}

if (dance_right_release 
    || dance_left_release 
    || dance_down_release 
    || dance_up_release
    || gp_dance_right_release
    || gp_dance_left_release
    || gp_dance_up_release
    || gp_dance_down_release) {
    dance_held = 0;
}


