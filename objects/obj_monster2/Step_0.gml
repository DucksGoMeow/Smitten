application_surface_enable(false);
///Handling of gestures
///////////////////////////////////////////////
//get the gesture details
TMCT_OnStep();
//Set the gesture name found on the device
//I decided to leave the usage of TMCT_SetDeviceGesture to you
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));
TMCT_SetDeviceGesture(1,TMCT_SegmentToGestureName( TMCT_GetSegment(1)));
TMCT_SetDeviceGesture(2,TMCT_SegmentToGestureName( TMCT_GetSegment(2)));
TMCT_SetDeviceGesture(3,TMCT_SegmentToGestureName( TMCT_GetSegment(3)));

dev0Up = 0;
dev1Up = 0;
dev2Up = 0;
dev3Up = 0;
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1;
if(device_mouse_check_button_released(1,mb_any)) dev1Up = 1;
if(device_mouse_check_button_released(2,mb_any)) dev2Up = 1;
if(device_mouse_check_button_released(3,mb_any)) dev3Up = 1;

g = TMCT_GetCurrentGesture(0);
//arr[0] = g
//arr[1] = dev0Up
//show_debug_message(arr);
if(dev0Up)
{
    if(g == "LEFT")
    {
       monsterHealth -= 50;
    }
    if(g == "RIGHT")
    {
       monsterHealth -= 50;
    }
    if(g == "UP")
    {
        monsterHealth -= 50;
    }
	if(g == "DOWN")
    {
        monsterHealth -= 50;
    }
    
}

if (monsterHealth = 0){
	instance_destroy();
}