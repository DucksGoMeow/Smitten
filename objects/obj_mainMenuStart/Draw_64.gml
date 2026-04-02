if (room == rm_mainMenu){
	if (!obj_mainMenuSettings.settingsOpened){
		draw_set_colour(c_black);
		draw_set_font(fnt_main);
		draw_sprite(Sprite34, 0, 533, 384);
		
		if (global.whatLevel == 1){
			draw_text(533, 404.8, obj_loadGame.buttonText);
		}
		else if (global.whatLevel >= 2){
			draw_text(533, 404.8, obj_loadGame.buttonText);
		}
	}
}