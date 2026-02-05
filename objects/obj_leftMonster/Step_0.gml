TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (!obj_monsterTimer.noMonster){
	if (!numChosen){
	   randomNum = irandom(3);
	   numChosen = true;
	}
	
	switch (randomNum){
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
	
	if (tSec >= 4 && tSec <= 15){
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
	}

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
		trying(); 
		if (tSec == 0){
			instance_destroy();
			obj_monsterTimer.monsterFinished = true;
			show_debug_message(destroying);
	}
	}
	obj_monsterTimer.noMonster = true;
}