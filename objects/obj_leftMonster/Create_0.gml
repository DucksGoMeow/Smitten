monsterHealth = 200;
patternFinished = false;

numChosen = false;
ammountChosen = false;
patternChosen = false;

//What type is the monster
randNumType = 2;

//How Many Arrows Will Spawn?
randNumArrow = 1;

//Direction of the arrows
randNumArrow1 = 1;
randNumArrow2 = 1;
randNumArrow3 = 1;
randNumArrow4 = 1;

tutorial = true;

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