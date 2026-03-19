load_game();
show_debug_message("Loaded!");

if (global.gameStarted == false){
	buttonText = "Start";
}
else if (global.gameStarted == true){
	buttonText = "Continue";
}

audio_group_load_progress(backgroundMusic);
audio_group_load_progress(soundEffects);