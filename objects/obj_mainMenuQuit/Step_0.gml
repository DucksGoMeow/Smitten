if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
		x - sprite_xoffset, y - sprite_yoffset, 
	    x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	    if (mouse_check_button_pressed(mb_left) && !obj_mainMenuSettings.settingsOpened) {
			game_end();
		}
	}
}