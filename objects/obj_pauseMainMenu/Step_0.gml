if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)){
	if (mouse_check_button_pressed(mb_left) && !obj_pauseMenu.settingsOpened){
    obj_pauseMenu.pausegame = false;
	
	instance_activate_all();
	if (surface_exists(obj_pauseMenu.pauseSurf)) surface_free(obj_pauseMenu.pauseSurf);
	if (buffer_exists(obj_pauseMenu.pauseSurfBuffer)) buffer_delete(obj_pauseMenu.pauseSurfBuffer);
		
	//whatevers here go to obj_resumepause and put it there too
	audio_stop_sound(obj_textbox.dialogue_audio);
	audio_resume_all();
		
	//instance_destroy(obj_restartpause);
	instance_destroy(obj_pauseRestartLevel);
	instance_destroy(obj_pauseMainMenu);
	
	room_goto(rm_mainMenu);
	show_debug_message(global.whatLevel);
	}
}