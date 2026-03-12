if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (obj_pauseMenu.pausegame){
			openSettings = true;
			
			draw_sprite(Sprite60, 0, 148.5, 76.5);
			instance_create_layer(240, 198, "Pause_Menu", obj_pauseSettingMusicSlider);
		}
	}
}
if (!obj_pauseMenu.pausegame){
	openSettings = false;
	instance_destroy(obj_pauseSettingMusicSlider);
}