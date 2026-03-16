if (pausegame && !settingsOpened){
	draw_sprite(Sprite34, 0, 533, 384);
	draw_sprite(Sprite34, 0, 533, 484);
	draw_sprite(Sprite34, 0, 533, 582);
	
	draw_set_font(fnt_main);
	draw_set_colour(c_black);
	
	if (!settingsOpened){
		draw_text(533, 384, "Restart");
		draw_text(533, 484, "Settings");
		draw_text(533, 582, "Main Menu");
	}
}

