TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (!obj_monsterTimer.noMonster){
	#region Monster Randomization
	if (!numChosen){
		randNumType = irandom(3);
			if (!patternChosen && tutorial){
				randNumArrow = 1;
				patternChosen = true;
			}
			if (!tutorial && global.whatlevel = 1 && !patternChosen){
				randNumArrow = irandom(2);
				patternChosen = true;
			}
		numChosen = true;
	}
	
	//Monster Type and Sprite
	switch (randNumType){
		case 1:
			monsterComingSpr = spr_testMonsterComing;
			break;
		case 2:
			monsterComingSpr = spr_testMonsterComing2;
			break;
		case 3:
			monsterComingSpr = spr_testMonsterComing3;
			break;
	}
	
	#region How Many Arrows Spawn
	if (!ammountChosen){
		switch (randNumArrow){
			case 1:
				randNumArrow1 = irandom(4);
				ammountChosen = true;
				break;
			case 2:
				randNumArrow1 = irandom(4);
				randNumArrow2 = irandom(4);
				ammountChosen = true;
				break;
			case 3:
				randNumArrow1 = irandom(4);
				randNumArrow2 = irandom(4);
				randNumArrow3 = irandom(4);
				ammountChosen = true;
				break;
			case 4:
				randNumArrow1 = irandom(4);
				randNumArrow2 = irandom(4);
				randNumArrow3 = irandom(4);
				randNumArrow4 = irandom(4);
				ammountChosen = true;
				break;
		}
	}
	#endregion
	
	#region Arrow Dirrections
	switch (randNumArrow1){
		case 1:
			patternUp = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if(g == "UP" && patternUp = true){
					patternUp = false;
					monsterHealth -= 200;
					patternFinished = true;
					}
				}
			}
			break;
		case 2:
			patternDown = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if(g == "DOWN" && patternDown = true){
					patternUp = false;
					monsterHealth -= 200;
					patternFinished = true;
					}
				}
			}
			break;
		case 3:
			patternLeft = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if(g == "LEFT" && patternLeft = true){
					patternLeft = false;
					monsterHealth -= 200;
					patternFinished = true;
					}
				}
			}
			break;
		case 4:
			patternRight = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if(g == "RIGHT" && patternRight = true){
					patternRight = false;
					monsterHealth -= 200;
					patternFinished = true;
					}
				}
			}
			break;
	}
	#endregion
	#endregion
	
	/*if (tSec >= 4 && tSec <= 15){
		if(dev0Up){ 
			if(g == "UP" && patternUp = true){
				patternUp = false;
				patternRight = true;
				monsterHealth -= 50;
			}
			else if(g == "RIGHT" && patternRight = true){
				patternRight = false;
				patternDown = true;
				monsterHealth -= 50;
			}
			else if(g == "DOWN" && patternDown = true){
				patternDown = false;
				patternLeft = true;
				monsterHealth -= 50;
			}
			else if(g == "LEFT" && patternLeft = true){
				patternLeft = false;
				monsterHealth -= 50;
				patternFinished = true;
			}
		}
	}*/

	//theres probably an easier way to do this...
	if(!patternFinished && tSec == 5 && !doneDamage){
		obj_playerHealthLv1.playerHealth -= 50;
		doneDamage = true;
	}

	if (tSec == 0 && tMil == 0){
		obj_monsterTimer.monsterFinished = true;
		instance_destroy();
	}

	if (monsterHealth = 0){
		leavingAnimation(); 
		if (tSec == 0){
			instance_destroy();
			obj_monsterTimer.monsterFinished = true;
		}
	}
	
	obj_monsterTimer.noMonster = true;
}