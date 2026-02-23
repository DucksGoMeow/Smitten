monsterHealth = 200;
patternFinished = false;

numChosen = false;
ammountChosen = false;
patternChosen = false;

monsterX = 1366; 
monsterY = 442;

doneDamage = false;
doneMonsterDamage = false;

//Arrow Pattern
randNumArrow = 1;

if (global.tutorial){
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
} 
if (global.tutorial){
	doneMonsterDamage = true;
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
}
else if (!global.tutorial && global.whatlevel = 1){
	doneMonsterDamage = true;
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
 }
else if (!global.tutorial && global.whatlevel = 2){
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40);
}
else if (!global.tutorial && global.whatlevel = 3){
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40);
}
else if (!global.tutorial && global.whatlevel = 4){
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64);
}
else if (!global.tutorial && global.whatlevel = 5){
	randNumArrow = choose(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64);
}
 
//Default Spites
monsterComingSpr = spr_blankMonster;
monsterDamageSpr = spr_blankMonster;
monsterAttackingSpr = spr_blankMonster;
monsterLeavingSpr = spr_blankMonster;

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