monsterHealth = 200;
patternFinished = false;

ammountChosen = false;
patternChosen = false;

monsterX = 1366; 
monsterY = 442;

doneDamage = false;
doneMonsterDamage = false;

//Arrow Pattern
randNumArrow = 1;

//Default Spites
monsterComingSpr = spr_blankMonster;
monsterDamageSpr = spr_blankMonster;
monsterAttackingSpr = spr_blankMonster;
monsterLeavingSpr = spr_blankMonster;

//Default Sound
monsterAttackingSound  = snd_mantisAttack;

//Level 1, 1-2 Arrows
if (room == rm_level1Battle){
	doneMonsterDamage = true;
	randNumArrow = irandom_range(1, 16);
}
//Level 2, 2-3 Arrows
else if (room == rm_level2Battle){
	randNumArrow = irandom_range(5, 40);
}
//Level 3, 3 Arrows
else if (room == rm_level3Battle){
	randNumArrow = irandom_range(17, 40);
}
//Level 4, 4 Arrows
else if (room == rm_level4Battle){
	randNumArrow = irandom_range(41, 64);
}
//Level 5, Boss Arrows
else if (room == rm_level5Battle || room == rm_level5Battle2){
	randNumArrow = irandom_range(65, 112);
}

tMin = 0;
tSec = 20;
tMil = 0; //tenth of a second

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
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}