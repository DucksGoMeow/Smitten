if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (obj_pauseMenu.pausegame){
			obj_pauseMenu.settingsOpened = true;

			instance_create_layer(240, 200, "Pause_Menu", obj_pauseSettingMusicSlider);
			instance_create_layer(240, 300, "Pause_Menu", obj_pauseSettingEffectSlider);
			instance_create_layer(240, 400, "Pause_Menu", obj_pauseSettingFullScreen);
			instance_create_layer(533, 582, "Pause_Menu", obj_pauseSettingBack);
		}
	}
}
if (!obj_pauseMenu.pausegame){
	obj_pauseMenu.settingsOpened = false;
	instance_destroy(obj_pauseSettingMusicSlider);
	instance_destroy(obj_pauseSettingEffectSlider);
	instance_destroy(obj_pauseSettingFullScreen);
	instance_destroy(obj_pauseSettingBack);
}