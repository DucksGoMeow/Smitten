randomTime = 5;
numChosen = false;
randomNum = irandom(2);

noMonster = false;
monsterFinished = false;
 
restartTimer = function(){
	event_perform(ev_create, 0);
	event_perform(ev_alarm, 0);
	event_perform(ev_step, 0);
	
	instance_create_layer(212, 437, "Instances", obj_leftMonster);
	obj_leftMonster.doneDamage = false;
	obj_leftMonster.numChosen = false;
}

switch (randomNum){
	case 1:
		randomTime = 10; 
		break;
	case 2:
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