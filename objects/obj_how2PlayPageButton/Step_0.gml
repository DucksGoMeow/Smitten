
	if (point_in_rectangle(mouse_x, mouse_y, 
	      x - sprite_xoffset, y - sprite_yoffset, 
	      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
		if (mouse_check_button_pressed(mb_left)) {
			if (!obj_settingPageButton.settingsPage){
				obj_settingPageButton.settingsPage = true;

				instance_destroy(obj_settingsBackground);
				instance_destroy(obj_mainMenuSettingMusicSlider);
				instance_destroy(obj_mainMenuSettingEffectSlider);
				instance_destroy(obj_mainMenuSettingFullScreen);
				
				instance_destroy(obj_pauseSettingMusicSlider);
				instance_destroy(obj_pauseSettingEffectSlider);
				instance_destroy(obj_pauseSettingFullScreen);
				
				instance_create_layer(148.5, 28, "Instances", obj_how2PlayBackground);
				instance_create_layer(962, 534, "Instances", obj_how2PlayPageButton_NextPage);
			}
		}
	}
