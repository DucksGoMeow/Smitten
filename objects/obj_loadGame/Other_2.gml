audio_group_load(backgroundMusic);
audio_group_load(soundEffects);

load_game();
show_debug_message("Loaded!");

if (global.gameStarted == false){
	buttonText = "Start";
}
else if (global.gameStarted == true){
	buttonText = "Continue";
}