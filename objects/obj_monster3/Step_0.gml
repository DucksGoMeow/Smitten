TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if(dev0Up){ 
	if(g == "UP" && patternUp = true){
		patternUp = false;
		patternRight = true;
        monsterHealth -= 50;
	}
	else if(g == "RIGHT" && patternRight = true){
		patternRight = false;
		patternDown = true;
		monsterHealth -= 50;
	}
	else if(g == "DOWN" && patternDown = true){
		patternDown = false;
		patternLeft = true;
		monsterHealth -= 50;
	}
	else if(g == "LEFT" && patternLeft = true){
		patternLeft = false;
		monsterHealth -= 50;
	}
}

if (monsterHealth = 0){
	instance_destroy();
}