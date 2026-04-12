//disable alpha blending (we just want RGB from screen)
gpu_set_blendenable(false);

if (pausegame) { //draw frozen image to screen while paused 
	surface_set_target(application_surface);
		if (surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
		else { //resore from buffer if we lost the surface

			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape)){ //toggle pause (whatever trigger youd like)
	if (!pausegame) { //pause now
		pausegame = true;

		//deactivate everything other than this instance
		instance_deactivate_all(true);
		audio_pause_all();
		
		//except these objs so they shows up
		instance_activate_object(obj_mouse);
		audio_pause_sound(snd_level1Battle);

		//NOTE:
		//if you need to pause anything like animating sprites, tiles, rooms background etc
		//you need to do that seperatly 
		//figure that out then
		
		//capture this game moment (wont capture draw gui contents)
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();

		//back up this surgace to a buffer incase we lose it 
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		
		//pause things		

			instance_create_layer(533, 384, "Pause_Menu", obj_pauseRestartLevel);
			instance_create_layer(533, 484, "Pause_Menu", obj_pauseSettings);
			instance_create_layer(533, 582, "Pause_Menu", obj_pauseMainMenu);
	}
	else { //unpause now
		pausegame = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		
		//whatevers here go to obj_resumepause and put it there too
		audio_resume_all();
		
		instance_destroy(obj_pauseRestartLevel);
		instance_destroy(obj_pauseSettings);
		instance_destroy(obj_pauseSettingMusicSlider);
		instance_destroy(obj_pauseSettingEffectSlider);
		instance_destroy(obj_pauseSettingFullScreen);
		instance_destroy(obj_pauseSettingBack);
		instance_destroy(obj_pauseMainMenu);
		}
	}


//enable alpha blending again
gpu_set_blendenable(true); 