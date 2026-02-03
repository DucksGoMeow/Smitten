if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
	obj_levelCleared.pausegame = false;
		
	instance_activate_all();
	if (surface_exists(obj_levelCleared.pauseSurf)) surface_free(obj_levelCleared.pauseSurf);
	if (buffer_exists(obj_levelCleared.pauseSurfBuffer)) buffer_delete(obj_levelCleared.pauseSurfBuffer);
		
	//whatevers here go to obj_resumepause and put it there too
	audio_resume_all();
		
	//instance_destroy(obj_restartpause);
	instance_destroy(obj_resetLevel);
	instance_destroy(obj_nextLevel);
	
	global.whatLevel += 1;
	show_debug_message(global.whatLevel);
    save_game();
	room_goto(rm_test_1)
	}
}