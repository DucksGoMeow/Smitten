TMCT_OnStep();
TMCT_SetDeviceGesture(0,TMCT_SegmentToGestureName( TMCT_GetSegment(0)));

dev0Up = 0 
if(device_mouse_check_button_released(0,mb_any)) dev0Up = 1

g = TMCT_GetCurrentGesture(0);

if (!obj_monsterTimer.noMonster){
	
	#region Arrow Pattern
	//Theres probably an easier way to do this...
	if (tSec >= 4 && tSec <= 15){
		if(dev0Up){ 
			if (arrowOne){
				upArrow();
				
				if (arrowDone){
					arrowOne = false;
					arrowTwo = true;
					monsterHealth -= 50;
				}
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