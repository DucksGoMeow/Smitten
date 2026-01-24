/// @description TMCT_GetLastGesture(device)
/// @param device
function TMCT_GetLastGesture(argument0) {
	/*
	Gets the last gesture name detected on the device

	device index, the device index 0,1,2,3

	*/
	return global.TMCT_lastGestures[argument0]; 



}
