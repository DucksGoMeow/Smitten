TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (!obj_monsterTimer.noMonster && !obj_monsterTimer.noLeftMonster && obj_monsterTimer.noRightMonster){
	#region Monster Randomization
	
	//Monster Type and Sprite
	switch (randNumType){
		case 1:
			monsterComingSpr = spr_mantisEnteringLeft;
			monsterDamageSpr = spr_mantisDamageLeft;
			monsterAttackingSpr = spr_mantisIdelLeft;
			monsterX = 0; 
			monsterY = 250;
			break;
		case 2:
			monsterComingSpr = spr_mantisEnteringLeft;
			monsterDamageSpr = spr_mantisDamageLeft;
			monsterAttackingSpr = spr_mantisIdelLeft;
			monsterX = 0; 
			monsterY = 250;
			break;
		case 3:
			monsterComingSpr = spr_mantisEnteringLeft;
			monsterDamageSpr = spr_mantisDamageLeft;
			monsterAttackingSpr = spr_mantisIdelLeft;
			monsterX = 0; 
			monsterY = 250;
			break;
	}

	#region Arrow Pattern
	//Theres probably an easier way to do this...
	switch (randNumArrow){
		#region 1 Arrow
		case 1:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 2:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 3:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
					monsterHealth -= 200;
					}
				}
			}
			break;
		case 4:
			if (tSec >= 4 && tSec <= 15){
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
			break;
		#endregion
		#region Down
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
		case 10:
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
		#endregion
		#region Left
		case 11:
			if (tSec >= 4 && tSec <= 15){
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
			if (tSec >= 4 && tSec <= 15){
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
			if (tSec >= 4 && tSec <= 15){
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
			if (tSec >= 4 && tSec <= 15){
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
			if (tSec >= 4 && tSec <= 15){
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
		#endregion
		#region 3 Arrow
		#region Up
		case 17:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
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
		case 18:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 19:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 20:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
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
		case 21:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 22:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Down
		case 23:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
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
		case 24:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 25:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 26:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
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
		case 27:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 28:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Left
		case 29:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 30:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 31:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 32:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 33:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 34:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion
		#region Right
		case 35:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 36:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
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
		case 37:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 38:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
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
		case 39:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 100;
					}
				}
			}
			break;
		case 40:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 100;
					}
				}
			}
			break;
		#endregion`
		#endregion
		#region 4 Arrows
		#region UP
		case 41:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}
				}
			}
			break;
		case 42:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 43:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 44:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 45:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 46:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#region Down
		case 47:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 48:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 49:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 50:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 51:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 52:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#region Left
		case 53:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 54:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 55:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 56:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 57:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 58:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						patternRight = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#region Right
		case 59:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 60:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 61:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 62:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 63:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						patternUp = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 64:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternRight){
						patternRight = true;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						patternLeft = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						patternDown = false;
						patternUp = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternUp){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#endregion

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
		sprite_index = monsterDamageSpr;
		if (tMil == 9){
				leavingAnimation(); 
		}
		
		if (tSec == 0){
			instance_destroy();
			obj_monsterTimer.monsterFinished = true;
		}
	}
	
	obj_monsterTimer.noMonster = true;
	obj_monsterTimer.noLeftMonster = true;
}