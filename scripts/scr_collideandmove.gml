//React to inputs
moveH = key_left + key_right;
moveV = key_down + key_up;

hsp = moveH * movespeed;
vsp = -moveV * movespeed;
//Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall)) {
    while(!place_meeting(x+sign(hsp), y, obj_wall)) {
        x += sign(hsp);
    }   
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)) {
    while(!place_meeting(x, y + sign(vsp), obj_wall)) {
        y += sign(vsp);
    }    
    vsp = 0;
}
y += vsp;

//gamepad dancing
if (gp_dance_right) {
    show_debug_message("dance to the right");
} else if (gp_dance_left) {
    show_debug_message("dance to the left");
} else if (gp_dance_down) {
    show_debug_message("get down, Auno!");
} else if (gp_dance_up) {
    show_debug_message("gotta get up, Auno!");
}
