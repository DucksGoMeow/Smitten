if (!obj_mainMenuSettings.settingsOpened){
	draw_set_colour(c_black);
	draw_set_font(fnt_main);
	draw_sprite(Sprite34, 0, 533, 384);
	
	if (gameStarted == false){
		draw_text(533, 404.8, "Start");
	}

	if (gameStarted == true){
		draw_text(533, 404.8, "Continue");
	}
}