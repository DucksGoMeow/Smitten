	//Monster Sprite
	draw_sprite(sprite_index, image_index, monsterX, monsterY);
	
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
	if (tSec == 20){
		sprite_index = spr_mantisEnteringLeft;
	}
	
	if (tSec <= 15 && obj_level5TutorialtDialogue.startAttacking){
		sprite_index = spr_mantisAttackLeft;
		draw_set_colour(c_red);

		draw_rectangle(20 - (tRound), 650, 290, 660, false);
	}
	
	if (obj_level5TutorialtDialogue.doneWMonster){
		sprite_index = spr_mantisLeavingLeft;
	}
	
	//Has to be drawn last so it is ontop of everything
	if (tSec <= 15 && obj_level5TutorialtDialogue.startAttacking && tSec >= 5){	
		draw_sprite(spr_arrowBox, 0, 477.5, 155);
		#region Draw Arrow Pattern
		switch (randNumArrow){
 		#region 3 Arrow
			#region Up
			case 65:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_down, 0, 350.5, 197);
					draw_sprite(spr_left, 0, 247.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
				}
				break;
				
			case 66:
				if (!patternUp){
					draw_sprite(spr_up, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
					draw_sprite(spr_right, 0, 247.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
				}
				break;
				
			case 67:
				if (!patternUp){
					draw_sprite(spr_up, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
					draw_sprite(spr_downReversed, 0, 247.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
				}
				break;
				
			case 68:
				if (!patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
					draw_sprite(spr_right, 0, 247.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
				}
				break;	

		case 69:
				if (!patternUp){
					draw_sprite(spr_up, 0, 475, 155);
					draw_sprite(spr_rightReversed, 0, 350.5, 197);
					draw_sprite(spr_down, 0, 247.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_down, 0, 350.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 475, 155);
				}
				break;
				
			case 70:
				if (!patternUp){
					draw_sprite(spr_up, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
					draw_sprite(spr_leftReversed, 0, 247.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
				}
				break;	
			#endregion
			#region Down
			case 71:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_up, 0, 350.5, 197);
					draw_sprite(spr_left, 0, 247.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
				}
				break;
				
			case 72:
				if (!patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
					draw_sprite(spr_right, 0, 247.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
				}
				break;
				
			case 73:
				if (!patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
					draw_sprite(spr_upReversed, 0, 247.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
				}
				break;
				
			case 74:
				if (!patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_left, 0, 350.5, 197);
					draw_sprite(spr_right, 0, 247.5, 197);
				}
				
				if (patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
				}
				break;	

			case 75:
				if (!patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_rightReversed, 0, 350.5, 197);
					draw_sprite(spr_up, 0, 247.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_up, 0, 350.5, 197);
				}
				
				if (patternUp){
					draw_sprite(spr_up, 0, 475, 155);
				}
				break;
				
			case 76:
				if (!patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
					draw_sprite(spr_leftReversed, 0, 247.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
				}
				break;	
			#endregion
			#region Left
			case 77:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
					draw_sprite(spr_down, 0, 247.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_down, 0, 350.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 475, 155);
				}
				break;
				
			case 78:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
					draw_sprite(spr_rightReversed, 0, 247.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_rightReversed, 0, 350.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
				}
				break;
			
			case 79:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_down, 0, 350.5, 197);
					draw_sprite(spr_upReversed, 0, 247.5, 197);
				}
				
				if (patternDown){
					draw_sprite(spr_down, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
				}
				break;
				
			case 80:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
					draw_sprite(spr_right, 0, 247.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
				}
				break;				

			case 81:
				if (!patternLeft){
					draw_sprite(spr_left, 0, 475, 155);
					draw_sprite(spr_rightReversed, 0, 350.5, 197);
					draw_sprite(spr_upReversed, 0, 247.5, 197);
				}
				
				if (patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
				}
				break;
				
			case 82:
				if (!patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_right, 0, 350.5, 197);
					draw_sprite(spr_downReversed, 0, 247.5, 197);
				}
				
				if (patternRight){
					draw_sprite(spr_right, 0, 475, 155);
					draw_sprite(spr_down, 0, 350.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
				}
				break;	
			#endregion
			#region Right
			case 83:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
					draw_sprite(spr_downReversed, 0, 247.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
				}
				break;

			case 84:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
					draw_sprite(spr_leftReversed, 0, 247.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
				}
				break;

			case 85:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
					draw_sprite(spr_upReversed, 0, 247.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
				}
				break;
				
			case 86:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
					draw_sprite(spr_leftReversed, 0, 247.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
				}
				break;

			case 87:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
					draw_sprite(spr_upReversed, 0, 247.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_upReversed, 0, 350.5, 197);
				}
				
				if (patternUpReversed){
					draw_sprite(spr_upReversed, 0, 475, 155);
				}
				break;

			case 88:
				if (!patternRightReversed){
					draw_sprite(spr_rightReversed, 0, 475, 155);
					draw_sprite(spr_leftReversed, 0, 350.5, 197);
					draw_sprite(spr_downReversed, 0, 247.5, 197);
				}
				
				if (patternLeftReversed){
					draw_sprite(spr_leftReversed, 0, 475, 155);
					draw_sprite(spr_downReversed, 0, 350.5, 197);
				}
				
				if (patternDownReversed){
					draw_sprite(spr_downReversed, 0, 475, 155);
				}
				break;
			#endregion
			#endregion
		}
	#endregion
	}
