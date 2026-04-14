TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);
	
#region Arrow Pattern
//Theres probably an easier way to do this...
switch (randNumArrow){
			#region 3 Arrow
		#region Up
		case 65:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternUpReversed){
						patternUpReversed = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 66:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 67:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 68:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternUpReversed){
						patternUpReversed = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 69:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 70:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Down
		case 71:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternDownReversed){
						patternDownReversed = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 72:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 73:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 74:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternDownReversed){
						patternDownReversed = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 75:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 76:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Left
		case 77:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 78:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 79:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 80:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 81:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 82:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Right
		case 83:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 84:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 85:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 86:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 87:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						patternLeftReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 88:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed){
						patternRightReversed = true;
						patternLeftReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed){
						patternLeftReversed = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion`
		#endregion
}
#endregion
	
if(tSec == 7 && !doneDamage){
	obj_hunter.defendAnimation();
	doneDamage = true;
	obj_level5TutorialtDialogue.startAttacking = false;

	if (tMil == 9 && !stopPlaying){
		sprite_index = spr_mantisIdleLeft;
		obj_level5TutorialtDialogue.didNotDefeat = true;
		doneDamage = false;
		stopPlaying = true;
	}
}

if (monsterHealth = 0){
	obj_level5TutorialtDialogue.startAttacking = false;
	sprite_index = monsterDamageSpr;
	obj_level5TutorialtDialogue.doneWMonster = true;
	
	if (tMil == 9 && !stopPlaying){
		obj_level5TutorialtDialogue.defeatedMonster = true;
		leavingAnimation(); 
		defeatedMonster = true;
		stopPlaying = true;
		show_debug_message("HI")
	}
}

if (tSec == 0 && tMil == 0 && defeatedMonster){
	show_debug_message("MEOW")
	instance_destroy();
}