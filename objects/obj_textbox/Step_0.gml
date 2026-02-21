var finished = text_progress == text_length;

if (!finished){
	if (!playingAudio){
		audio_play_sound(dialogue_audio, 1, 1);
		playingAudio = true;
	}
}
else if (finished){
	audio_pause_sound(dialogue_audio);
	playingAudio = false;
}