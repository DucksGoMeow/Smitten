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

if (obj_monsterTimer.noMonster && obj_playerHealth.playerHealth == 0){ //toggle pause (whatever trigger youd like)
	if (!pausegame) { //pause now
		pausegame = true;

		//deactivate everything other than this instance
		instance_deactivate_all(true);
		
		//except these objs so they shows up
		instance_activate_object(obj_playerHealth);
		instance_activate_object(obj_levelCleared_Date);
		instance_activate_object(obj_levelTimer);
		instance_activate_object(obj_monsterTimer);
		obj_monsterTimer.tSec = 1000000000000000000000;

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

		instance_create_layer(533, 400.9, "Pause_Menu", obj_failedResetLevel_Date);
		instance_create_layer(533, 516.4, "Pause_Menu", obj_failedMainMenu_Date);

	}
}

gpu_set_blendenable(true); 