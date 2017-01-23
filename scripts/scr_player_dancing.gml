scr_get_inputs();

if (!dance_prompt) {
    state = states.normal;
}

if (dance_right) {
    show_debug_message("dance to the right");
} else if (dance_left) {
    show_debug_message("dance to the left");
} else if (dance_down) {
    show_debug_message("get down, Auno!");
} else if (dance_up) {
    show_debug_message("gotta get up, Auno!");
} 
