if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (!settingsOpened){
		settingsOpened = true;
		show_debug_message("HI")
		instance_create_layer(148.5, 28, "Instances", obj_settingsBackground);
		instance_create_layer(352, 28, "Instances", obj_settingPageButton);
		instance_create_layer(719, 28, "Instances", obj_how2PlayPageButton);
		instance_create_layer(601, 347.5, "Instances", obj_pauseSettingMusicSlider);
		instance_create_layer(601, 512, "Instances", obj_pauseSettingEffectSlider);
		instance_create_layer(603, 166, "Instances", obj_pauseSettingFullScreen);
		instance_create_layer(533, 658, "Instances",  obj_pauseSettingBack);
		visible = false;
		}
	}
}
if (settingsOpened){
	settingsOpened = false;
	show_debug_message("HELLO")
	instance_destroy(obj_settingsBackground);
	instance_destroy(obj_settingPageButton);
	instance_destroy(obj_pauseSettingMusicSlider);
	instance_destroy(obj_pauseSettingEffectSlider);
	instance_destroy (obj_pauseSettingFullScreen);
	instance_destroy( obj_pauseSettingBack);
	visible = true;
}