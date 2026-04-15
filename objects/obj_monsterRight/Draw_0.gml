if (!obj_monsterTimer.noMonster && !obj_monsterTimer.noRightMonster && obj_monsterTimer.noLeftMonster){
	//Monster Sprite
	draw_sprite(sprite_index, image_index, monsterX, monsterY);

	//Timer Text (this is temporary)
	/*var t = "";
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

	draw_text(100, 90, t);*/
	
	//Monster Type and Sprite
	switch (obj_rightMonsterSprite.randNumType){
		case 1:
			monsterComingSpr = spr_mantisEnteringRight;
			monsterDamageSpr = spr_mantisDamageRight;
			monsterAttackingSpr = spr_mantisAttackRight;
			monsterLeavingSpr = spr_mantisLeavingRight;
			
			monsterAttackingSound = snd_mantisAttack;
			
			monsterX = 941; 
			monsterY = 250;
			break;
		case 2:
			monsterComingSpr = spr_wolfspiderEnteringRight;
			monsterDamageSpr = spr_wolfspiderDamageRight;
			monsterAttackingSpr = a;
			monsterLeavingSpr = spr_doNotDelete;
			
			monsterAttackingSound = snd_mantisAttack;
			
			monsterX = 939.5; 
			monsterY = 231;
			break;
		case 3:
			monsterComingSpr = spr_blankMonster;
			monsterDamageSpr = spr_blankMonster;
			monsterAttackingSpr = spr_blankMonster;
			monsterLeavingSpr = spr_blankMonster;
			break;
	}
	
	//sprite animations
	if (tSec == 20){
		sprite_index = monsterComingSpr;
	}

	if (tSec <= 15 && tSec >= 6){
		sprite_index = monsterAttackingSpr;
		draw_set_colour(c_red);

		draw_rectangle(1000 - (tRound), 650, 1290, 660, false);
	}

	if (monsterHealth == 150){
		if (!doneMonsterDamage){
			sprite_index = monsterDamageSpr;
			if (tMil == 9){
				sprite_index = monsterAttackingSpr;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = monsterAttackingSpr;
		}
	}

	if (monsterHealth == 100){
		if (doneMonsterDamage){
			sprite_index = monsterDamageSpr;
			if (tMil == 9){
				sprite_index = monsterAttackingSpr;
				doneMonsterDamage = false;
			}
		}
		else if (!doneMonsterDamage){
			sprite_index = monsterAttackingSpr;
		}
	}

	if (monsterHealth == 50){
		if (!doneMonsterDamage){
			sprite_index = monsterDamageSpr;
			if (tMil == 9){
				sprite_index = monsterAttackingSpr;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = monsterAttackingSpr;
		}
	}
	
	if (tSec == 5){
		sprite_index = monsterLeavingSpr;
	}

	//Has to be drawn last so it is ontop of everything
	if (tSec >= 6 && tSec <= 15){
		draw_sprite(spr_arrowBox, 0, 888.5, 155);
		#region Draw Arrow Pattern
		switch (randNumArrow){
			#region 1 Arrow
			case 1:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 2:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 3:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 4:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			#endregion
			#region 2 Arrow
			#region Up
			case 5:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 6:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 7:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
			#endregion
			#region Down
			case 8:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 9:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 10:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;	
			#endregion
			#region Left
			case 11:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;	
			
			case 12:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
			
			case 13:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
			#endregion
			#region Right
			case 14:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
			case 15:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
			
			case 16:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
			#endregion
			#endregion
			#region 3 Arrow
			#region Up
			case 17:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 18:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			case 19:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 20:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;	

		case 21:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 22:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;	
			#endregion
			#region Down
			case 23:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 24:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			case 25:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 26:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;	

			case 27:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 28:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;	
			#endregion
			#region Left
			case 29:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 30:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
			
			case 31:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 32:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;				

			case 33:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 34:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;	
			#endregion
			#region Right
			case 35:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;

			case 36:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;

			case 37:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 38:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;

			case 39:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;

			case 40:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
			#endregion
			#endregion
			#region 4 Arrows
			#region UP
			case 41:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;

			case 42:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 43:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
							
			case 44:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 45:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
												
			case 46:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
			#endregion
			#region Down
			case 47:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;

			case 48:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
	
			case 49:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
					
			case 50:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
							
			case 51:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
										
			case 52:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
			#endregion
			#region Left
			case 53:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
			
			case 54:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 55:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			case 56:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 57:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 58:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
			#endregion
			#region Right
			case 59:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 60:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 61:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 62:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 63:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 64:
				if (!patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_up, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
			#endregion
			#endregion
			//Reversed
			#region 3 Arrow
			#region Up
			case 65:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 66:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			case 67:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
				
			case 68:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;	

		case 69:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 70:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;	
			#endregion
			#region Down
			case 71:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 72:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
				
			case 73:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 74:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;	

			case 75:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_up, 0, 1117.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_up, 0, 1014.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 888, 155);
				}
				break;
				
			case 76:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;	
			#endregion
			#region Left
			case 77:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 78:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_rightReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
				}
				break;
			
			case 79:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 80:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;				

			case 81:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 82:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;	
			#endregion
			#region Right
			case 83:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;

			case 84:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;

			case 85:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 86:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;

			case 87:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;

			case 88:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
			#endregion
			#endregion
			#region 4 Arrows
			#region UP
			case 89:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;

			case 90:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
				
			case 91:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
							
			case 92:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_downReversed, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
				
			case 93:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
												
			case 94:
				if (!patternUp){
					draw_sprite(spr_up, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
			#endregion
			#region Down
			case 95:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;

			case 96:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_rightReversed, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
	
			case 97:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_rightReversed, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_rightReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
				}
				break;
					
			case 98:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
							
			case 99:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_left, 0, 1220.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_left, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_left, 0, 1014.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
				}
				break;
										
			case 100:
				if (!patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
			#endregion
			#region Left
			case 101:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
					draw_sprite(spr_right, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
				}
				break;
			
			case 102:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_rightReversed, 0, 1117.5, 197);
					draw_sprite(spr_downReversed, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
				
			case 103:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_rightReversed, 0, 1220.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_rightReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
				}
				break;
				
			case 104:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_right, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_right, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 105:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_down, 0, 1220.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_down, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_down, 0, 1014.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 888, 155);
				}
				break;
				
			case 106:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 888, 155);
					draw_sprite(spr_rightReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
			#endregion
			#region Right
			case 107:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
					draw_sprite(spr_leftReversed, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;
				
			case 108:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
					draw_sprite(spr_downReversed, 0, 1220.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
				
			case 109:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_leftReversed, 0, 1220.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
				}
				break;
				
			case 110:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_leftReversed, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
				
			case 111:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
					draw_sprite(spr_downReversed, 0, 1220.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
				}
				break;
				
			case 112:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 888, 155);
					draw_sprite(spr_leftReversed, 0, 1014.5, 197);
					draw_sprite(spr_downReversed, 0, 1117.5, 197);
					draw_sprite(spr_upReversed, 0, 1220.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 888, 155);
					draw_sprite(spr_downReversed, 0, 1014.5, 197);
					draw_sprite(spr_upReversed, 0, 1117.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 888, 155);
					draw_sprite(spr_upReversed, 0, 1014.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 888, 155);
				}
				break;
			#endregion
			#endregion
		}
	#endregion
	}
}