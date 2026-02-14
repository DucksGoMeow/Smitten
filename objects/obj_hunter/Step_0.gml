TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);
if(dev0Up){ 
	if (g == "UP"){
		upAnimation(); 
	}
	if (g == "DOWN"){
		downAnimation(); 
	}
	if (g == "LEFT"){
		leftAnimation(); 
	}
	if (g == "RIGHT"){
		rightAnimation(); 
	}
}

if (tSec == 0 && tMil == 0){
	hunterSprite = spr_hunterWalking;
}