TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (!obj_monsterTimer.noMonster){
	#region Monster Randomization
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
		//Reversed
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
		#region 4 Arrows
		#region UP
		case 89:
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
		case 90:
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
		case 91:
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
						patternDownReversed = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 92:
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
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 93:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternUpReversed){
						patternUpReversed = true;
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
		case 94:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternUp){
						patternUp = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
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
		case 95:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "UP" && !patternDownReversed){
						patternDownReversed = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
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
		case 96:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternUpReversed= true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 97:
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
						patternUpReversed = false;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 98:
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
						patternRight = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 99:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "DOWN" && !patternDown){
						patternDown = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternLeft = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternLeft){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 100:
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
						patternLeftReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#region Left
		case 101:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternRight = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternRight){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 102:
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
						patternRightReversed = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 103:
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
						patternUpReversed = false;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 104:
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
						patternRight = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 105:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "RIGHT" && !patternLeftReversed){
						patternLeftReversed = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						patternUpReversed = false;
						patternDown = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternDown){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 106:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternLeft){
						patternLeft = true;
						patternRightReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "LEFT" && patternRightReversed){
						patternRightReversed = false;
						patternDownReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed){
						patternDownReversed = false;
						patternUpReversed = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed){
						monsterHealth -= 50;
					}

				}
			}
			break;
		#endregion
		#region Right
		case 107:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						patternUpReversed  = false;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						patternDownReversed  = false;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 108:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						patternUpReversed  = false;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						patternLeftReversed  = false;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 109:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						patternDownReversed  = false;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						patternUpReversed  = false;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 110:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						patternDownReversed  = false;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						patternLeftReversed  = false;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 111:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						patternLeftReversed  = false;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						patternUpReversed  = false;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						monsterHealth -= 50;
					}

				}
			}
			break;
		case 112:
			if (tSec >= 4 && tSec <= 15){
				if(dev0Up){ 
					if (g == "LEFT" && !patternRightReversed ){
						patternRightReversed  = true;
						patternLeftReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "RIGHT" && patternLeftReversed ){
						patternLeftReversed  = false;
						patternDownReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "UP" && patternDownReversed ){
						patternDownReversed  = false;
						patternUpReversed  = true;
						monsterHealth -= 50;
					}
					else if (g == "DOWN" && patternUpReversed ){
						monsterHealth -= 50;
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
		obj_playerHealth.playerHealth -= 50;
		obj_count.damageSprite();
		obj_hunter.defendAnimation();
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
}