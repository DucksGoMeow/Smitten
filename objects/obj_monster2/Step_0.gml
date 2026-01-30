TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);
if(dev0Up){
    if(g == "LEFT"){
       monsterHealth -= 50;
    }
    if(g == "RIGHT"){
       monsterHealth -= 50;
    }
    if(g == "UP"){
        monsterHealth -= 50;
    }
	if(g == "DOWN"){
        monsterHealth -= 50;
    }
    
}

if (monsterHealth = 0){
	instance_destroy();
}