TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);
	
#region Arrow Pattern
//Theres probably an easier way to do this...
switch (randNumArrow){
	#region 1 Arrow
		case 1:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 2:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 3:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 4:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight = true){
					monsterHealth -= 200;
					}
				}
			}
			break;
		#endregion
	#region 2 Arrow
		#region Up
		case 5:
			if (obj_startingTutorialDialouge.startAttacking){
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
			if (obj_startingTutorialDialouge.startAttacking){
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
			if (obj_startingTutorialDialouge.startAttacking){
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
			break;
		#endregion
		#region Down
		case 8:
			if (obj_startingTutorialDialouge.startAttacking){
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
			if (obj_startingTutorialDialouge.startAttacking){
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
		case 10:
			if (obj_startingTutorialDialouge.startAttacking){
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
		#endregion
		#region Left
		case 11:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
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
		case 12:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
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
		case 13:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRight = true;
						monsterHealth -= 100;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		#endregion
		#region Right
		case 14:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternUp = true;
						monsterHealth -= 100;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;			
		case 15:
			if (obj_startingTutorialDialouge.startAttacking){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternDown = true;
						monsterHealth -= 100;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;	
		case 16:
			if (obj_startingTutorialDialouge.startAttacking){
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
		#endregion

}
#endregion

	
if(tSec == 6 && !doneDamage){
	audio_play_sound(monsterAttackingSound, 1, 0);
	obj_count.damageSprite();
	obj_hunter.defendAnimation();
	doneDamage = true;
	
	restartBattleAnimation();
	failedTutorial = true;
	startDialogue("Failed Tutorial");
	show_debug_message("HI");
}

if (monsterHealth = 0){
	sprite_index = monsterDamageSpr;
	if (tMil == 9){
		leavingAnimation(); 
	}
		
	if (tSec == 0){
		instance_destroy();
	}
}

if (tSec == 0 && tMil == 0 && skipTutorial){
		room_goto(rm_levelBattle);
		instance_destroy();
	}