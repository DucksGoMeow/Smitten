if (noMonster){
	if (tMin == 0 && tSec == 0 && tMil == 0){
    //Spawn monster
	noMonster = false;
	numChosen = false;
	
	switch (randomNumSide){
			case 1:
				noLeftMonster = false;
				break;
			case 2:
				noRightMonster = false;
				break;
		}
	}
}

if (monsterFinished){
	restartTimer();
}