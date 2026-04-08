if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
	obj_levelCleared.pausegame = false;
		
	instance_activate_all();
	if (surface_exists(obj_levelCleared.pauseSurf)) surface_free(obj_levelCleared.pauseSurf);
	if (buffer_exists(obj_levelCleared.pauseSurfBuffer)) buffer_delete(obj_levelCleared.pauseSurfBuffer);
	
	audio_resume_all();
	
	global.whatLevel += 1;
	audio_stop_all();
	save_game();
	
	instance_create_layer(0, 0, "Pause_Menu", obj_roomTransition);
	instance_destroy(obj_completeResetLevel);
	instance_destroy(obj_completeNextLevel);
	instance_destroy(obj_levelCleared);
	instance_destroy(obj_levelTimer);
	instance_destroy(obj_progressBar);
	instance_destroy(obj_monsterTimer);
	instance_destroy(obj_leftMonster);
	instance_destroy(obj_monsterRight);
	instance_destroy(obj_levelFailed);
	}	
}