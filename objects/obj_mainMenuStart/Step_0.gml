if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
		x - sprite_xoffset, y - sprite_yoffset, 
	    x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	    if (mouse_check_button_pressed(mb_left) && !obj_mainMenuSettings.settingsOpened) {	
			if (global.gameStarted == false){
				room_goto(rm_startingCutscene);
				global.gameStarted = true;
			}
			else if (global.gameStarted == true){
				
				switch(global.whatLevel){
					case 1:
						room_goto(rm_level1Battle);
						break;
					case 2:
						global.whatLevel -= 1;
						room_goto(rm_level1Battle);
						break;
					case 3:
						room_goto(rm_level2Start);
						break;
					case 4:
						global.whatLevel -= 1;
						room_goto(rm_level2Start);
						break;
					case 5:
						room_goto(rm_level3Start);
						break;
					case 6:
						global.whatLevel -= 1;
						room_goto(rm_level3Start);
						break;
					case 7:
						room_goto(rm_level4Battle);
						break;
					case 8:
						global.whatLevel -= 1;
						room_goto(rm_level4Battle);
						break;
					case 9:
						room_goto(rm_level5Battle);
						break;
					case 10:
						global.whatLevel -= 1;
						room_goto(rm_level5Battle);
						break;
				}
			}
		}
	
	}
}