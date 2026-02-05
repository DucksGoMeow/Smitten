if (point_in_rectangle(mouse_x, mouse_y, 
	x - sprite_xoffset, y - sprite_yoffset, 
    x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
		if (gameStarted == false){
			room_goto(rm_test);
			gameStarted = true;
		}
		if (gameStarted == true){
			load_game();
			
			switch(global.whatLevel){
				case 1:
					room_goto(rm_test);
					break;
				case 2:
					room_goto(rm_test_1);
					break;
			}
		}
	}
}