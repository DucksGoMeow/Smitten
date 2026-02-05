if (noMonster){
	if (tMin == 0 && tSec == 0 && tMil == 0){
    //Spawn monster
    noMonster = false;
	numChosen = false;
	}
}

if (monsterFinished){
	if (!numChosen){
	   randomNum = irandom(2);
	   numChosen = true;
	}
	restartTimer();
}