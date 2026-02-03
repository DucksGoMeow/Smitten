if (noMonster){
	if (tMin == 0 && tSec == 0 && tMil == 0){
    //Spawn monster
    noMonster = false;
	numChosen = false;
	show_debug_message(randomTime);
	}
}

if (monsterFinished){
	if (!numChosen){
	   randomNum = irandom(5);
	   numChosen = true;
	   show_debug_message(randomNum)
	}
	restartTimer();
}