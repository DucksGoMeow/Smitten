if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left) && obj_mainMenuSettings.settingsOpened) {
		if (fullscreen){
			window_set_fullscreen(false)
			fullscreenSprite = spr_fullscreenOff;
			fullscreen = false;
		}
		else if (!fullscreen){
			window_set_fullscreen(true);
			fullscreenSprite = spr_fullscreenOn;
			fullscreen = true;
		}
	}
}