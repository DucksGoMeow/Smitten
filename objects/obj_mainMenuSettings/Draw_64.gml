if (settingsOpened){
	draw_sprite(Sprite34, 0, 533, 582);
	draw_text(533, 582, "Back");
	
	draw_text(240, 400, obj_mainMenuSettingFullScreen.fullscreenText);
}
else {
	draw_sprite(Sprite34, 0, 533, 484);
	draw_text(533, 484, "Settings");
}
