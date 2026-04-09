if (room == rm_mainMenu){
	if (point_in_rectangle(mouse_x, mouse_y, 
	      x - sprite_xoffset, y - sprite_yoffset, 
	      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
		if (mouse_check_button_pressed(mb_left)) {
			if (settingsPage){
				settingsPage = false;
				instance_destroy(obj_how2PlayBackground);

				instance_create_layer(148.5, 28, "Instances", obj_settingsBackground);
				instance_create_layer(601, 347.5, "Instances", obj_mainMenuSettingMusicSlider);
				instance_create_layer(601, 512, "Instances", obj_mainMenuSettingEffectSlider);
				instance_create_layer(603, 166, "Instances", obj_mainMenuSettingFullScreen);
				
				instance_destroy(obj_how2PlayBackground);
				instance_destroy(obj_how2PlayPageButton_NextPage);
				instance_destroy(obj_how2PlayBackground2);
				instance_destroy(obj_how2PlayPageButton_PrevPage);
			}
		}
	}
}