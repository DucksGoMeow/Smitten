if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		obj_levelCleared_Date.pausegame = false;
		obj_levelCleared_Date.timerDone = 1;
		
		instance_activate_all();
		if (surface_exists(obj_levelCleared_Date.pauseSurf)) surface_free(obj_levelCleared_Date.pauseSurf);
		if (buffer_exists(obj_levelCleared_Date.pauseSurfBuffer)) buffer_delete(obj_levelCleared_Date.pauseSurfBuffer);
			
		show_debug_message("HI")
		
		global.whatLevel -= 1;
		if (room == rm_level1Date) room_goto(rm_level1Battle);
	}
}