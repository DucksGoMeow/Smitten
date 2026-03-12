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

if (global.tutorial){
	doneMonsterDamage = true;
	randNumArrow = irandom_range(1, 16);
}
else if (!global.tutorial && global.whatlevel = 1){
	doneMonsterDamage = true;
	randNumArrow = irandom_range(1, 16);
 }
else if (!global.tutorial && global.whatlevel = 2){
	randNumArrow = irandom_range(5, 40);
}
else if (!global.tutorial && global.whatlevel = 3){
	randNumArrow = irandom_range(5, 40);
}
else if (!global.tutorial && global.whatlevel = 4){
	randNumArrow = irandom_range(5, 64);
}
else if (!global.tutorial && global.whatlevel = 5){
	randNumArrow = irandom_range(5, 64);
}

tMin = 0;
tSec = 20;
tMil = 0; //tenth of a second

alarm[1] = 6; // 60 frames per second 

patternUp = false;
patternDown = false;
patternRight = false;
patternLeft = false;

leavingAnimation = function(){
	event_perform(ev_create, 0);
	tSec = 5;
	doneDamage = true;
	event_perform(ev_alarm, 0);
}