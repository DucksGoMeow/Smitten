if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
	      x - sprite_xoffset, y - sprite_yoffset, 
	      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
		if (mouse_check_button_pressed(mb_left)) {
			settingsOpened = true;
				
			instance_create_layer(148.5, 28, "Instances", obj_settingsBackground);
			instance_create_layer(352, 28, "Instances", obj_settingPageButton);
			instance_create_layer(719, 28, "Instances", obj_how2PlayPageButton);
			instance_create_layer(601, 347.5, "Instances", obj_mainMenuSettingMusicSlider);
			instance_create_layer(601, 512, "Instances", obj_mainMenuSettingEffectSlider);
			instance_create_layer(603, 166, "Instances", obj_mainMenuSettingFullScreen);
			instance_create_layer(533, 658, "Instances", obj_mainMenuSettingBack);
			instance_destroy(obj_mainMenuStart);
			instance_destroy(obj_mainMenuQuit);
			visible = false;
			
		}
	}
	if (!settingsOpened){
		instance_destroy(obj_settingsBackground);
		instance_destroy(obj_settingPageButton);
		instance_destroy(obj_mainMenuSettingMusicSlider);
		instance_destroy(obj_mainMenuSettingEffectSlider);
		instance_destroy(obj_mainMenuSettingFullScreen);
		instance_destroy(obj_mainMenuSettingBack);
		instance_create_layer(533, 384, "Instances", obj_mainMenuStart);
		instance_create_layer(533, 582, "Instances", obj_mainMenuQuit);
		visible = true;
	}
}