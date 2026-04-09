if (audio_group_is_loaded(backgroundMusic)){
	audio_stop_sound(snd_fakemainMenu);
	audio_play_sound(snd_mainMenu, 1, 1);
}
else if (!audio_group_is_loaded(backgroundMusic)){
	audio_play_sound(snd_fakemainMenu, 1, 1);

}