/// @description TMCT_ClearSegment(device)
/// @param device
function TMCT_ClearSegment(argument0) {
	/*
	Clears the gesture segment string for the device

	device index, the device index 0,1,2,3

	*/
	global.TMCT_segments[argument0] = ""; 



}
