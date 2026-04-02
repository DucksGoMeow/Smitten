monsterHealth = 200;
patternFinished = false;

ammountChosen = false;
patternChosen = false;

monsterX = 0; 
monsterY = 288;

doneDamage = false;
doneMonsterDamage = false;

//Default Spites
monsterComingSpr = spr_blankMonster;
monsterDamageSpr = spr_blankMonster;
monsterAttackingSpr = spr_blankMonster;
monsterLeavingSpr = spr_blankMonster;
monsterIdleSpr = spr_blankMonster;

//Default Sound
monsterAttackingSound  = snd_mantisAttack;

//Arrow Pattern
randNumArrow = 1;

numChosen = false;	

if (!numChosen){
	randNumArrow = irandom_range(1, 4);
	numChosen = true;
}

doneMonsterDamage = true;

skipTutorial = false;
failedTutorial = false;

//The Timer
tMin = 0;
tSec = 50;
tMil = 0; 

alarm[1] = 6; // 60 frames per second 

patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	obj_startingTutorialDialouge.doneWMonster = true;
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}

skipTutorialAnimation = function(){
	event_perform(ev_create, 0);
	obj_startingTutorialDialouge.doneWMonster = true;
	skipTutorial = true;
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}

startBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 20;
	doneDamage = true;
	event_perform(ev_alarm, 0);
	obj_startingTutorialDialouge.startAttacking = true;
}


restartBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 30;
	doneDamage = true;
	event_perform(ev_alarm, 0);
	obj_startingTutorialDialouge.startAttacking = true;
}