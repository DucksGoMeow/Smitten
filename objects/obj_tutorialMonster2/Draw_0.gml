	//Monster Sprite
	draw_sprite(sprite_index, image_index, monsterX, monsterY);

	//Damage Sprites
	if (monsterHealth == 150){
		if (!doneMonsterDamage){
			sprite_index = spr_wolfspiderDamageRight;
			if (tMil == 9){
				sprite_index = a;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = a;
		}
	}

	if (monsterHealth == 100){
		if (doneMonsterDamage){
			sprite_index = spr_wolfspiderDamageRight;
			if (tMil == 9){
				sprite_index = a;
				doneMonsterDamage = false;
			}
		}
		else if (!doneMonsterDamage){
			sprite_index = a;
		}
	}

	if (monsterHealth == 50){
		if (!doneMonsterDamage){
			sprite_index = spr_wolfspiderDamageRight;
			if (tMil == 9){
				sprite_index = a;
				doneMonsterDamage = true;
			}
		}
		else if (doneMonsterDamage){
			sprite_index = a;
		}
	}
	
	//sprite animations
	if (tSec == 50){
		sprite_index = spr_wolfspiderEnteringRight;
	}
	
	if (tSec == 45){
		sprite_index = a;
	}
	
	if (obj_tutorialDialouge.startAttacking = true){
		sprite_index = a;
		draw_set_colour(c_red);

		draw_rectangle(1000 - (tRound), 650, 1290, 660, false);
	}
	
	if (obj_tutorialDialouge.doneWMonster){
		sprite_index = spr_doNotDelete;
	}
	
	//Has to be drawn last so it is ontop of everything
	if (obj_tutorialDialouge.startAttacking && tSec >= 5){	
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
		}
	#endregion
	}
