if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		settingsOpened = true;
		
		instance_create_layer(148.5, 28, "Instances", obj_settingsBackground);
		instance_create_layer(352, 28, "Instances", obj_settingPageButton);
		instance_create_layer(719, 28, "Instances", obj_how2PlayPageButton);
		
		instance_create_layer(601, 347.5, "Pause_Menu", obj_pauseSettingMusicSlider);
		instance_create_layer(601, 512, "Pause_Menu", obj_pauseSettingEffectSlider);
		instance_create_layer(603, 166, "Pause_Menu", obj_pauseSettingFullScreen);
		instance_create_layer(533, 658, "Pause_Menu", obj_pauseSettingBack);
	}
}
if (!settingsOpened){
	
	instance_destroy(obj_settingsBackground);
	instance_destroy(obj_pauseSettingMusicSlider);
	instance_destroy(obj_pauseSettingEffectSlider);
	instance_destroy(obj_pauseSettingFullScreen);
	instance_destroy(obj_pauseSettingBack);
}