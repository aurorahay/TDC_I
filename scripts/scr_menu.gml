switch(mpos) {
    case 0:
        room_goto(rm_pro_01);
        break;
    
    case 1:
        room_goto(rm_test);
        break;
        
    case 2:
        break;
        
    case 3:
        break;
    
    case 4:
        game_end();
        break;
        
    default:
        break;
}
