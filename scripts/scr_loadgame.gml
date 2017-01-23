if file_exists("Save.sav") {
   var loadFile = file_text_open_read("Save.sav");
   var loadedRoom = file_text_read_string(loadFile);
   
   loadedRoom = real(base64_decode(loadedRoom));
   
   file_text_close(loadFile);
   
   room_goto(loadedRoom); 
}
