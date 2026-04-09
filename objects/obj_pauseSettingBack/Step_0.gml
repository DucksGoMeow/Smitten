if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		obj_pauseSettings.settingsOpened = false;
		
		instance_destroy(obj_pauseSettingMusicSlider);
		instance_destroy(obj_pauseSettingEffectSlider);
		instance_destroy(obj_pauseSettingFullScreen);
		
		instance_destroy(obj_how2PlayBackground);
		instance_destroy(obj_how2PlayPageButton_NextPage);
		instance_destroy(obj_how2PlayBackground2);
		instance_destroy(obj_how2PlayPageButton_PrevPage);
	}
}