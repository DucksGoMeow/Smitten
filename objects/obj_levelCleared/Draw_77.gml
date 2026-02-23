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

if (timerDone == 0){ //toggle pause (whatever trigger youd like)
	if (!pausegame) { //pause now
		pausegame = true;

		//deactivate everything other than this instance
		instance_deactivate_all(true);
		
		//except these objs so they shows up
		instance_activate_object(obj_playerHealth);

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
		audio_pause_all();
		
		//instance_create_layer(0, 0, "Instances", Object21);
		instance_create_layer(533, 516.4, "Instances", obj_resetLevel);
		instance_create_layer(533, 448, "Instances", obj_levelTimer);
		
		if (levelCleared){
			instance_create_layer(533, 400.9, "Instances", obj_nextLevel);
		}

	}
	/*else { //unpause now
		pausegame = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		
		//whatevers here go to obj_resumepause and put it there too
		audio_resume_all();
		
		//instance_destroy(obj_restartpause);
		instance_destroy(obj_resetLevel);
		instance_destroy(obj_nextLevel);
		}*/
	}


//enable alpha blending again
gpu_set_blendenable(true); 