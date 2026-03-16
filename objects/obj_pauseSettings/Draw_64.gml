if (obj_pauseMenu.settingsOpened && obj_pauseMenu.pausegame){
	draw_sprite(Sprite34, 0, 240, 400);
	draw_sprite(Sprite34, 0, 533, 582);

	draw_text(240, 400, obj_pauseSettingFullScreen.fullscreenText);
	draw_text(533, 582, "Back");
}
