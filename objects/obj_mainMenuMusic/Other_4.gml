if (!loadedMainMenu){
	audio_play_sound(snd_fakemainMenu, 1, 1);
	loadedMainMenu = true;
}
else{
	audio_play_sound(snd_mainMenu, 1, 1);
}
