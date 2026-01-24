draw_sprite(spr_testMonster, 0, 212, 437);

var barWidth;
barWidth = 200;

var monsterHealthColor = c_green;
if (monsterHealth <= 199) {
	monsterHealthColor = c_yellow;
	barWidth = 150;
}

if (monsterHealth <= 149) {
	monsterHealthColor = c_orange;
	barWidth = 100;
}

if (monsterHealth <= 50) {
	monsterHealthColor = c_red;
	barWidth = 50;

}
draw_set_color(monsterHealthColor);
draw_rectangle(100, 111.9774, 100 + (monsterHealth/monsterHealth)*barWidth, 111.9774 + 10, false)

if (monsterHealth = 0){
	instance_destroy();
}

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

draw_set_color(c_white)

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

if(device_mouse_check_button_pressed(0,mb_left)) alarm[0] = -1;
if(dev0Up) 
{
    alarm[0] = room_speed * 2
    last_valid_shape = TMCT_GetCurrentGesture(0);
}
if(alarm[0])
{
    var r = 100;
    var midx = room_width*.5;
    var midy = room_height*.7;
    if(last_valid_shape == "RIGHT")
    {
        draw_arrow(midx-r,midy,midx+r,midy,20)
    }
    if(last_valid_shape == "LEFT")
    {
        draw_arrow(midx+r,midy,midx-r,midy,20)
    }
    if(last_valid_shape == "UP")
    {
        draw_arrow(midx,midy+r,midx,midy-r,20)
    }
    if(last_valid_shape == "DOWN")
    {
        draw_arrow(midx,midy-r,midx,midy+r,20)
    }
}