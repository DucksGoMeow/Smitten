if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
	      x - sprite_xoffset, y - sprite_yoffset, 
	      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
		if (mouse_check_button_pressed(mb_left)) {
			settingsOpened = true;
				
			
			instance_create_layer(240, 200, "Instances", obj_mainMenuSettingMusicSlider);
			instance_create_layer(240, 300, "Instances", obj_mainMenuSettingEffectSlider);
			instance_create_layer(240, 400, "Instances", obj_mainMenuSettingFullScreen);
			instance_create_layer(533, 582, "Instances", obj_mainMenuSettingBack);
			instance_destroy(obj_mainMenuStart);
			visible = false;
			
		}
	}
	if (!settingsOpened){
		instance_destroy(obj_mainMenuSettingMusicSlider);
		instance_destroy(obj_mainMenuSettingEffectSlider);
		instance_destroy(obj_mainMenuSettingFullScreen);
		instance_destroy(obj_mainMenuSettingBack);
		instance_create_layer(533, 384, "Instances", obj_mainMenuStart);
		visible = true;
	}
}