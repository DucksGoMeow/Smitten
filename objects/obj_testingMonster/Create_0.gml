monsterHealth = 200;
patternFinished = false;

ammountChosen = false;
patternChosen = false;

monsterX = -425; 
monsterY = 442;

doneDamage = false;
doneMonsterDamage = false;

//Default Spites
monsterComingSpr = spr_blankMonster;
monsterDamageSpr = spr_blankMonster;
monsterAttackingSpr = spr_blankMonster;
monsterLeavingSpr = spr_blankMonster;

//Default Sound
monsterAttackingSound  = snd_mantisAttack;

//Arrow Pattern
randNumArrow = 1;


//The Timer
tMin = 0;
tSec = 20;
tMil = 0; 

alarm[1] = 6; // 60 frames per second 

patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

arrowOne = true;
arrowTwo = false;
arrowThree = false;
arrowFour = false;

arrowDone = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}

upArrow = function(){
	if (g == "UP" && !patternUp)
	{
		arrowOneDone = true;
	}
}