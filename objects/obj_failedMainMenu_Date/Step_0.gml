_Dateif (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		obj_levelFailed_Date.pausegame = false;
		
		instance_activate_all();
		if (surface_exists(obj_levelFailed_Date.pauseSurf)) surface_free(obj_levelFailed_Date.pauseSurf);
		if (buffer_exists(obj_levelFailed_Date.pauseSurfBuffer)) buffer_delete(obj_levelFailed_Date.pauseSurfBuffer);
			
		//whatevers here go to obj_resumepause and put it there too
		audio_resume_all();
			
		//instance_destroy(obj_restartpause);
		instance_destroy(obj_failedResetLevel_Date);
		instance_destroy(obj_failedMainMenu_Date);
		
		global.whatLevel -= 1;
		room_goto(rm_mainMenu);
	}
}