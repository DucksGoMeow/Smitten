monsterHealth = 200;
patternFinished = false;

ammountChosen = false;
patternChosen = false;

monsterX = 0; 
monsterY = 288;

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

//Arrow Pattern
randNumArrow = 1;

numChosen = false;	

if (!numChosen){
	randNumArrow = irandom_range(65, 88);
	numChosen = true;
}

doneMonsterDamage = true;

skipTutorial = false;
failedTutorial = false;

stopPlaying = false;

//The Timer
tMin = 0;
tSec = 20;
tMil = 0; 

tRound = 10;

alarm[1] = 6; // 60 frames per second 

//Arrow Bool
patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

//Reversed Arrow Bool
patternUpReversed = false;
patternDownReversed = false;
patternRightReversed = false;
patternLeftReversed = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	obj_level5TutorialtDialogue.doneWMonster = true;
	tSec = 5;
	event_perform(ev_alarm, 0);
	show_debug_message("HELLO")
	
	if (tSec == 0 && tMil == 0){
		show_debug_message("YAY")
		instance_destroy();
	}
}

startBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 20;
	event_perform(ev_alarm, 0);
	obj_level5TutorialtDialogue.startAttacking = true;
}

restartBattleAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 30;
	event_perform(ev_alarm, 0);
	obj_startingTutorialDialouge.startAttacking = true;
}