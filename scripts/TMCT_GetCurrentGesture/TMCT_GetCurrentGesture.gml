/// @description TMCT_GetCurrentGesture(device)
/// @param device
function TMCT_GetCurrentGesture(argument0) {
	/*
	Gets the current gesture name detected on the device

	return value can be a "" or a GestureName
	device index, the device index 0,1,2,3

	*/
	return global.TMCT_currentGestures[argument0]; 



}
