tMin = 0;
tSec = 5;
tMil = 0; //tenth of a second

startDate = true;
doneDate = false;
showMenu = false;

alarm[0] = 6; // 60 frames per second

restartTimer = function(){
	event_perform(ev_create, 0);
	tSec = 2;
	startDate = false;
	showMenu = true;
	event_perform(ev_alarm, 0);
}