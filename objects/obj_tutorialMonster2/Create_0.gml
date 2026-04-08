monsterHealth = 200;
patternFinished = false;

show_debug_message(sprite_index);

ammountChosen = false;
patternChosen = false;

monsterX = 939.5; 
monsterY = 231;

doneDamage = false;
doneMonsterDamage = false;
defeatedMonster = false;

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
	randNumArrow = irandom_range(5, 16);
	numChosen = true;
}

doneMonsterDamage = true;

skipTutorial = false;
failedTutorial = false;

//The Timer
tMin = 0;
tSec = 50;
tMil = 0; 

tRound = 10;

alarm[1] = 6; // 60 frames per second 

patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	obj_tutorialDialouge.doneWMonster = true;
	tSec = 5;
	event_perform(ev_alarm, 0);
}

startBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 20;
	event_perform(ev_alarm, 0);
	obj_tutorialDialouge.startAttacking = true;
}


restartBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 30;
	event_perform(ev_alarm, 0);
	obj_tutorialDialouge.startAttacking = true;
}