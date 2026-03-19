if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
	obj_levelCleared.pausegame = false;
		
	instance_activate_all();
	if (surface_exists(obj_levelCleared.pauseSurf)) surface_free(obj_levelCleared.pauseSurf);
	if (buffer_exists(obj_levelCleared.pauseSurfBuffer)) buffer_delete(obj_levelCleared.pauseSurfBuffer);
	
	audio_resume_all();
	
	global.whatLevel = global.whatLevel + 1;
	audio_stop_all();
	
	save_game();
	
	var target = rm_levelBattle;
	
	if (room == rm_levelBattle) target = rm_levelDate;
	TransitionStart(target, seq_moveOut, seq_moveIn)
	}	
}