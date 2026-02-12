if (!obj_monsterTimer.noMonster && !obj_monsterTimer.noRightMonster && obj_monsterTimer.noLeftMonster){
tMil -= 1;

if (tMil = -1){ //reduce seconds by 1
	tMil = 9;
	tSec -= 1;
}

if (tSec = -1){ //reduce minutes by 1
	tSec = 59;
	tMin -= 1;
}
}

//make sure timer doesn't tick if its at 0
if !(tSec = 0 && tMil = 0){
	alarm[1] = 6;
}
else {
	//when the timer ends

}