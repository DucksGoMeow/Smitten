/// @description TMCT_GetSegment(device)
/// @param device
function TMCT_GetSegment(argument0) {
	/*
	Returns the gesture segment string for the device

	device index, the device index 0,1,2,3

	*/
	return global.TMCT_segments[argument0]; 



}
