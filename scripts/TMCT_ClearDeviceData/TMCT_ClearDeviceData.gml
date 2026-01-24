/// @description TMCT_ClearDeviceData(device)
/// @param device
function TMCT_ClearDeviceData(argument0) {
	/*
	Clears the device data accumulated during a gesture

	device index, the device index 0,1,2,3
	*/

	ds_list_clear(global.TMCT_dev[argument0]);



}
