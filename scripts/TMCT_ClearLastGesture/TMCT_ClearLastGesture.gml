/// @description TMCT_ClearLastGesture(device)
/// @param device
function TMCT_ClearLastGesture(argument0) {
	/*
	Clears the last gesture name detected on the device

	device index, the device index 0,1,2,3

	*/
	global.TMCT_lastGestures[argument0] = ""; 



}
