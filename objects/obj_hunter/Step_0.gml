TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (room == rm_level1Battle || room == rm_level2Battle || room == rm_level3Battle || room == rm_level4Battle || room == rm_level5Battle2){
	if(dev0Up){ 
		if (g == "UP"){
			upAnimation(); 
			audio_play_sound(snd_swordSlashingV1, 1, 0);
		}
		if (g == "DOWN"){
			downAnimation(); 
			audio_play_sound(snd_swordSlashingV2, 1, 0);
		}
		if (g == "LEFT"){
			leftAnimation(); 
			audio_play_sound(snd_swordSlashingV3, 1, 0);
		}
		if (g == "RIGHT"){
			rightAnimation(); 
			audio_play_sound(snd_swordSlashingV4, 1, 0);
		}
	}
}

if (tSec == 0 && tMil == 0){
	if (room == rm_tutorial || room == rm_level5Battle){
		hunterSprite = spr_hunterIdle;
	}
	else{
		hunterSprite = spr_hunterWalking;
	}
}