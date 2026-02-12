if (!obj_monsterTimer.noMonster && !obj_monsterTimer.noLeftMonster && obj_monsterTimer.noRightMonster){
	//Monster Sprite
	draw_sprite(sprite_index, image_index, 212, 442);

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

	//Health Bar (this is only temporary)
	var barWidth;
	barWidth = 200;

	var monsterHealthColor = c_green;
	if (monsterHealth <= 199){
		monsterHealthColor = c_yellow;
		barWidth = 150;
	}

	if (monsterHealth <= 149){
		monsterHealthColor = c_orange;
		barWidth = 100;
	}

	if (monsterHealth <= 50){
		monsterHealthColor = c_red;
		barWidth = 50;

	}
	draw_set_color(monsterHealthColor);
	draw_rectangle(100, 111, 100 + (monsterHealth/monsterHealth)*barWidth, 111 + 10, false);

	//sprite animations
	if (tSec == 20){
		sprite_index = monsterComingSpr;
	}

	else if (tSec == 15){
		sprite_index = spr_testMonsterAttacking;
	}

	else if (tSec == 5){
		sprite_index = spr_testMonsterLeaving;
	}

	//Has to be drawn last so it is ontop of everything
	if (tSec >= 6 && tSec <= 15){
	#region Draw Arrow Pattern
		switch (randNumArrow){
 			#region 1 Arrow
			case 1:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 2:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 3:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 4:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
				
			#endregion
			#region 2 Arrow
			#region Up
			case 5:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 6:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 7:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
			#endregion
			#region Down
			case 8:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 9:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 10:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;	
			#endregion
			#region Left
			case 11:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;	
			
			case 12:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
			
			case 13:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
			#endregion
			#region Right
			case 14:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
			case 15:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
			
			case 16:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
			#endregion
			#endregion
			#region 3 Arrow
			#region Up
			case 17:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 18:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
				
			case 19:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 20:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;	

		case 21:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 22:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;	
			#endregion
			#region Down
			case 23:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 24:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
				
			case 25:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 26:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;	

			case 27:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 28:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;	
			#endregion
			#region Left
			case 29:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 30:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
			
			case 31:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 32:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;				

			case 33:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 34:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;	
			#endregion
			#region Right
			case 35:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;

			case 36:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;

			case 37:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 38:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;

			case 39:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;

			case 40:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
			#endregion
			#endregion
			#region 4 Arrows
			#region UP
			case 41:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;

			case 42:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 43:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
							
			case 44:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 45:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
												
			case 46:
				if (!patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
			#endregion
			#region Down
			case 47:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;

			case 48:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
	
			case 49:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
					
			case 50:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
							
			case 51:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
										
			case 52:
				if (!patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
			#endregion
			#region Left
			case 53:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
			
			case 54:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 55:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_right, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
				}
				break;
				
			case 56:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_right, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 57:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 58:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_right, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
			#endregion
			#region Right
			case 59:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 60:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 61:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_left, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
				}
				break;
				
			case 62:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_left, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
				
			case 63:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
					draw_sprite(spr_down, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
				}
				break;
				
			case 64:
				if (!patternRight){
					draw_sprite(spr_right, 0, 425, 153);
					draw_sprite(spr_left, 0, 361, 153);
					draw_sprite(spr_down, 0, 297, 153);
					draw_sprite(spr_up, 0, 233, 153);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 425, 153);
					draw_sprite(spr_down, 0, 361, 153);
					draw_sprite(spr_up, 0, 297, 153);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 425, 153);
					draw_sprite(spr_up, 0, 361, 153);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 425, 153);
				}
				break;
			#endregion
			#endregion
		}
	#endregion
	}
}