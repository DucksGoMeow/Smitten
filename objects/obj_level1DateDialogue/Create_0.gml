tMin = 0;
tSec = 5;
tMil = 0; //tenth of a second

startDate = true;

alarm[0] = 6; // 60 frames per second

restartTimer = function (){
	event_perform(ev_create, 0);
	tSec = 5;
	event_perform(ev_alarm, 0);
}