/// @description TMCT_SetNumAngleSegments(numsegments)
/// @param numsegments
function TMCT_SetNumAngleSegments(argument0) {
	/*
	Sets the number of segments in the 360 range

	numsegments real, the number of segments
	default is 8 segments, which is also the maximum supported, 
	accessible as 0,1,2,3,4,5,6,7
	*/
	global.TMCT_AnglesSegments = argument0;



}
