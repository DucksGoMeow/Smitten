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

//equivalend code
/*
var Gesture0 = TMCT_SegmentToGestureName( TMCT_GetSegment(0));
var Gesture1 = TMCT_SegmentToGestureName( TMCT_GetSegment(1));
var Gesture2 = TMCT_SegmentToGestureName( TMCT_GetSegment(2));
var Gesture3 = TMCT_SegmentToGestureName( TMCT_GetSegment(3));
//store the last valid found
if(Gesture0 != "")
{
    LastGesture0 = Gesture0;
}
if(Gesture1 != "")
{
    LastGesture1 = Gesture1;
}
if(Gesture2 != "")
{
    LastGesture2 = Gesture2;
}
if(Gesture3 != "")
{
    LastGesture3 = Gesture3;
}
*/

//check for the gesture end (mouse release on 0,1,2,3 devices)
dev0Up = 0;
dev1Up = 0;
dev2Up = 0;
dev3Up = 0;
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1;
if(device_mouse_check_button_released(1,mb_any)) dev1Up = 1;
if(device_mouse_check_button_released(2,mb_any)) dev2Up = 1;
if(device_mouse_check_button_released(3,mb_any)) dev3Up = 1;
///////////////////////////////////////////////

///////////////////////////////////////////////
//Your handling starts here
//debug
var lf = chr(10);
s = "";
s+="Dev 0 Last Gesture: " + TMCT_GetLastGesture(0);
s+=" Dev 0 Gesture: " + TMCT_GetCurrentGesture(0);
s+=" Dev 0 Segments: " + TMCT_GetSegment(0);
s+=lf
s+="Dev 1 Last Gesture: " + TMCT_GetLastGesture(1);
s+=" Dev 1 Gesture: " + TMCT_GetCurrentGesture(1);
s+=" Dev 1 Segments: " + TMCT_GetSegment(1);
s+=lf
s+="Dev 2 Last Gesture: " + TMCT_GetLastGesture(2);
s+=" Dev 2 Gesture: " + TMCT_GetCurrentGesture(2);
s+=" Dev 2 Segments: " + TMCT_GetSegment(2);
s+=lf
s+="Dev 3 Last Gesture: " + TMCT_GetLastGesture(3);
s+=" Dev 3 Gesture: " + TMCT_GetCurrentGesture(3);
s+=" Dev 3 Segments: " + TMCT_GetSegment(3);
s+=lf
s+="Training For (Type Name): " + keyboard_string;
s+=lf
draw_set_color(c_green)

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text(room_width/2,room_height,string_hash_to_newline(s));

var g = TMCT_GetCurrentGesture(0);
//arr[0] = g
//arr[1] = dev0Up
//show_debug_message(arr);
if(dev0Up)
{
    if(g == "LEFT")
    {
        with(TMC_Demo_Character) motion_set(180,4);
    }
    if(g == "RIGHT")
    {
        with(TMC_Demo_Character) motion_set(0,4);
    }
    if(g == "UP")
    {
        with(TMC_Demo_Character) motion_set(90,12);
    }
    if(g == "RUNJUMPL")
    {
        with(TMC_Demo_Character) motion_set(135,12);
    }
    if(g == "RUNJUMPR")
    {
        with(TMC_Demo_Character) motion_set(45,12);
    }
    if(g == "DOWN")
    {
        with(TMC_Demo_Character) hspeed = 0;
    }
    if(g == "")
    {
        with(TMC_Demo_Character) hspeed = 0;
    }
    
}
//Code training hack. this records the segments and makes code for the Name typed and Code generated
//in the demo
if(dev0Up and TMCT_GetSegment(0)!="")
{
    if(os_type  == os_windows and keyboard_string != "") 
    {
        if(!ds_map_find_value(training_map,TMCT_GetSegment(0)))
        {
		var qt = chr(34);
        var t = "TMCT_AddGesture(<QT>NAME<QT>,<QT>CODE<QT>,true);"
		t = string_replace_all(t,"<QT>",qt);
        t = string_replace_all(t,"NAME",keyboard_string);
        t = string_replace_all(t,"CODE",TMCT_GetSegment(0));
        clipboard_set_text(t+chr(13)+chr(10)+clipboard_get_text())
        ds_map_add(training_map,TMCT_GetSegment(0),1);
        }
    }
}
///////////////////////////////////////////////
//After handling
//clear the gestures for all released devices
//if(dev0Up) TMCT_ClearLastGesture(0);
//if(dev1Up) TMCT_ClearLastGesture(1);
//if(dev2Up) TMCT_ClearLastGesture(2);
//if(dev3Up) TMCT_ClearLastGesture(3);
if(dev0Up) TMCT_ClearSegment(0);
if(dev1Up) TMCT_ClearSegment(1);
if(dev2Up) TMCT_ClearSegment(2);
if(dev3Up) TMCT_ClearSegment(3);
if(dev0Up) TMCT_ClearDeviceData(0);
if(dev1Up) TMCT_ClearDeviceData(1);
if(dev2Up) TMCT_ClearDeviceData(2);
if(dev3Up) TMCT_ClearDeviceData(3);
///////////////////////////////////////////////

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
    if(last_valid_shape == "CIRCLE")
    {
        draw_circle(midx,midy,r,1)
    }
    if(last_valid_shape == "SQUARE")
    {
        draw_rectangle(midx-r,midy-r,room_width/2+r,midy+r,1)
    }
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
    if(last_valid_shape == "RUNJUMPL")
    {
        draw_arrow(midx+r,midy+r,midx-r,midy-r,20)
    }
    if(last_valid_shape == "RUNJUMPR")
    {
        draw_arrow(midx-r,midy+r,midx+r,midy-r,20)
    }
    if(last_valid_shape == "L")
    {
        draw_line(midx,midy-r,midx,midy+r)
        draw_arrow(midx,midy+r,midx+r,midy+r,20)
    }
}

if(device_mouse_check_button(0,mb_left))
{
    draw_set_color(c_dkgray);
    var r = 100;
    var midx = room_width*.5;
    var midy = room_height*.7;
    if(TMCT_GetLastGesture(0) == "CIRCLE")
    {
        draw_circle(midx,midy,r,1)
    }
    if(TMCT_GetLastGesture(0) == "SQUARE")
    {
        draw_rectangle(midx-r,midy-r,room_width/2+r,midy+r,1)
    }
    if(TMCT_GetLastGesture(0) == "RIGHT")
    {
        draw_arrow(midx-r,midy,midx+r,midy,20)
    }
    if(TMCT_GetLastGesture(0) == "LEFT")
    {
        draw_arrow(midx+r,midy,midx-r,midy,20)
    }
    if(TMCT_GetLastGesture(0) == "UP")
    {
        draw_arrow(midx,midy+r,midx,midy-r,20)
    }
    if(TMCT_GetLastGesture(0) == "DOWN")
    {
        draw_arrow(midx,midy-r,midx,midy+r,20)
    }
    if(TMCT_GetLastGesture(0) == "RUNJUMPL")
    {
        draw_arrow(midx+r,midy+r,midx-r,midy-r,20)
    }
    if(TMCT_GetLastGesture(0) == "RUNJUMPR")
    {
        draw_arrow(midx-r,midy+r,midx+r,midy-r,20)
    }
    if(TMCT_GetLastGesture(0) == "L")
    {
        draw_line(midx,midy-r,midx,midy+r)
        draw_arrow(midx,midy+r,midx+r,midy+r,20)
    }
}

/* */
/*  */



/* */
/*  */
