TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1



g = TMCT_GetCurrentGesture(0);
if(dev0Up){ 
	if (g == "UP"){
		if (room == rm_tutorial){
			attackAnimationRight(); 
		}
		else{
			attackAnimation(); 
		}
	}
	if (g == "DOWN"){
		if (room == rm_tutorial){
			attackAnimationRight(); 
		}
		else{
			attackAnimation(); 
		}
	}
	if (g == "LEFT"){
		if (room == rm_tutorial){
			attackAnimationRight(); 
		}
		else{
			attackAnimation(); 
		}
	}
	if (g == "RIGHT"){
		if (room == rm_tutorial){
			attackAnimationRight(); 
		}
		else{
			attackAnimation(); 
		}
	}
}

if (tMil == 0){
	numChosen = true;
	if (room == rm_tutorial){
		countSprite = spr_countIdleRight;
	}
	else{
		countSprite = spr_countWalking;
	}
}