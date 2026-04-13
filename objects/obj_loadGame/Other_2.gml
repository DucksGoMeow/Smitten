audio_group_load(audiogroup_default);
audio_group_load(soundEffects);

load_game();

if (global.gameStarted == false){
	buttonSprite = spr_startButton;
}
else if (global.gameStarted == true){
	buttonSprite = spr_continueButton;
}