tMin = 0;
tSec = 3;
tMil = 0; //tenth of a second

startingDialogue = true;

alarm[0] = 6; // 60 frames per second

restartTimer = function (){
	event_perform(ev_create, 0);
	tSec = 5;
	event_perform(ev_alarm, 0);
}