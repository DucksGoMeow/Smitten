randomTime = 5;
randomNum = irandom(5);
numChosen = false;

noMonster = false;
monsterFinished = false;
 
restartTimer = function(){
	event_perform(ev_create, 0);
	event_perform(ev_alarm, 0);
	event_perform(ev_step, 0);
	event_perform_object(obj_monster4, ev_create, 0);
	event_perform_object(obj_monster4, ev_alarm, 0);
	event_perform_object(obj_monster4, ev_step, 0);
	event_perform_object(obj_monster4, ev_draw, 0);
}

	switch (randomNum){
		case 1:
		case 3:
		case 5:
			randomTime = 10;
			break;
		case 2:
		case 4:
			randomTime = 5; 
			break;
		default:
			randomTime = 15;
			break;
	}
 
tMin = 0;
tSec = randomTime;
tMil = 0; //tenth of a second

alarm[0] = 6; // 60 frames per second 