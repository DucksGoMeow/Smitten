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
				randNumArrow = irandom(4);
				patternChosen = true;
			}
			if (!tutorial && global.whatlevel = 1 && !patternChosen){
				randNumArrow = 5;
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

	#region Arrow Pattern
	//Theres probably an easier way to do this...
	switch (randNumArrow){
		#region 1 Arrow
		case 1:
			patternUp = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && patternUp){
					patternUp = false;
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 2:
			patternDown = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && patternDown){
					patternUp = false;
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 3:
			patternLeft = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && patternLeft){
					patternLeft = false;
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 4:
			patternRight = true;
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && patternRight = true){
					patternRight = false;
					monsterHealth -= 200;
					}
				}
			}
			break;
		#endregion
		#region 2 Arrow
		case 5:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDown = true;
						monsterHealth -= 100;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 6:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternLeft = true;
						monsterHealth -= 100;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 7:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 100;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
		case 8:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUp = true;
						monsterHealth -= 100;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 9:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternLeft = true;
						monsterHealth -= 100;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		case 8:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 100;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		case 9:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternLeft = true;
						patternUp = true;
						monsterHealth -= 100;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;		
		case 10:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternLeft = true;
						patternDown = true;
						monsterHealth -= 100;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		case 10:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternLeft = true;
						monsterHealth -= 100;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		#endregion
		case 11:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDown = true;
						monsterHealth -= 100;
					}
					else if (g == "Down" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;	
	}
	#endregion
	
	if(tSec == 5 && !doneDamage){
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