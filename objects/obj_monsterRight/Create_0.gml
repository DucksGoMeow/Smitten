monsterHealth = 200;
patternFinished = false;

numChosen = false;
ammountChosen = false;
patternChosen = false;

//What type is the monster
randNumType = 2;

//Arrow Pattern
randNumArrow = 1;

Arrow1 = 1;

tutorial = false;

//Default Spites
monsterComingSpr = spr_testMonster;

tMin = 0;
tSec = 20;
tMil = 0; //tenth of a second

alarm[1] = 6; // 60 frames per second 

patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

doneDamage = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}