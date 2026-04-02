	//Monster Sprite
	draw_sprite(sprite_index, image_index, monsterX, monsterY);

	//Timer Text (this is temporary)
	var t = "";
	t += string(tMin);
	t += ":";

	if (tSec > 9){
		t += ""+string(tSec);
	}

	if (tSec < 10){
		t +="0"+string(tSec);
	}

	t += ".";
	t += string(tMil)

	draw_text(100, 90, t);
	
	//Damage Sprites
	if (monsterHealth == 150){
		if (!doneMonsterDamage){
			sprite_index = spr_mantisDamageLeft;
			if (tMil == 9){
				sprite_index = spr_mantisAttackLeft;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = spr_mantisAttackLeft;
		}
	}

	if (monsterHealth == 100){
		if (doneMonsterDamage){
			sprite_index = spr_mantisDamageLeft;
			if (tMil == 9){
				sprite_index = spr_mantisAttackLeft;
				doneMonsterDamage = false;
			}
		}
		else if (!doneMonsterDamage){
			sprite_index = spr_mantisAttackLeft;
		}
	}

	if (monsterHealth == 50){
		if (!doneMonsterDamage){
			sprite_index = spr_mantisDamageLeft;
			if (tMil == 9){
				sprite_index = spr_mantisAttackLeft;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = spr_mantisAttackLeft;
		}
	}
	
	//sprite animations
	if (tSec == 50){
		sprite_index = spr_mantisEnteringLeft;
	}
	
	if (tSec == 45){
		sprite_index = spr_mantisIdelLeft;
	}
	
	if (obj_startingTutorialDialouge.startAttacking = true){
		sprite_index = spr_mantisAttackLeft;
	}
	
	if (obj_startingTutorialDialouge.doneWMonster){
		sprite_index = spr_mantisLeavingLeft;
	}
	
	//Has to be drawn last so it is ontop of everything
	if (obj_startingTutorialDialouge.startAttacking && tSec >= 5){	
	#region Draw Arrow Pattern
		switch (randNumArrow){
 			#region 1 Arrow
			case 1:
				if (!patternUp){
					draw_sprite(spr_up, 0, 416, 160);
				}
				break;
				
			case 2:
				if (!patternDown){
					draw_sprite(spr_down, 0, 416, 160);
				}
				break;
				
			case 3:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
				}
				break;
				
			case 4:
				if (!patternRight){
					draw_sprite(spr_right, 0, 416, 160);
				}
				break;
				
			#endregion
			#region 2 Arrow
			#region Up
			case 5:
				if (!patternUp){
					draw_sprite(spr_up, 0, 416, 160);
					draw_sprite(spr_down, 0, 288, 160);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 416, 160);
				}
				break;
				
			case 6:
				if (!patternUp){
					draw_sprite(spr_up, 0, 416, 160);
					draw_sprite(spr_left, 0, 288, 160);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
				}
				break;
				
			case 7:
				if (!patternUp){
					draw_sprite(spr_up, 0, 416, 160);
					draw_sprite(spr_right, 0, 288, 160);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 416, 160);
				}
				break;
			#endregion
			#region Down
			case 8:
				if (!patternDown){
					draw_sprite(spr_down, 0, 416, 160);
					draw_sprite(spr_up, 0, 288, 160);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 416, 160);
				}
				break;
				
			case 9:
				if (!patternDown){
					draw_sprite(spr_down, 0, 416, 160);
					draw_sprite(spr_left, 0, 288, 160);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
				}
				break;
				
			case 10:
				if (!patternDown){
					draw_sprite(spr_down, 0, 416, 160);
					draw_sprite(spr_right, 0, 288, 160);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 416, 160);
				}
				break;	
			#endregion
			#region Left
			case 11:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
					draw_sprite(spr_up, 0, 288, 160);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 416, 160);
				}
				break;	
			
			case 12:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
					draw_sprite(spr_down, 0, 288, 160);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 416, 160);
				}
				break;
			
			case 13:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
					draw_sprite(spr_right, 0, 288, 160);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 416, 160);
				}
				break;
			#endregion
			#region Right
			case 14:
				if (!patternRight){
					draw_sprite(spr_right, 0, 416, 160);
					draw_sprite(spr_up, 0, 288, 160);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 416, 160);
				}
				break;
			case 15:
				if (!patternRight){
					draw_sprite(spr_right, 0, 416, 160);
					draw_sprite(spr_down, 0, 288, 160);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 416, 160);
				}
				break;
			
			case 16:
				if (!patternRight){
					draw_sprite(spr_right, 0, 416, 160);
					draw_sprite(spr_left, 0, 288, 160);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 416, 160);
				}
				break;
			#endregion
			#endregion
		}
	#endregion
	}
