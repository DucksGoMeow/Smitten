if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
		x - sprite_xoffset, y - sprite_yoffset, 
	    x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	    if (mouse_check_button_pressed(mb_left) && !obj_mainMenuSettings.settingsOpened) {	
			if (global.gameStarted == false){
				room_goto(rm_tutorial);
				global.gameStarted = true;
			}
			else if (global.gameStarted == true){
				
				switch(global.whatLevel){
					case 1:
						room_goto(rm_level1Battle);
						show_debug_message(obj_loadGame.buttonText);
						break;
					case 3:
						room_goto(rm_level2Battle);
						show_debug_message(obj_loadGame.buttonText);
						break;
				}
			}
		}
	
	}
}