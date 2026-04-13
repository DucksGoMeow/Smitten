if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
	
		global.whatLevel += 1;
		save_game();
		
		if (room == rm_level1Date) room_goto(rm_level2Battle);
		if (room == rm_level2Date) room_goto(rm_level3Battle);
		if (room == rm_level3Date) room_goto(rm_level4Battle);
		if (room == rm_level4Date) room_goto(rm_level5Battle);
	}	
}