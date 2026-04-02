if (!obj_monsterTimer.noMonster && !obj_monsterTimer.noLeftMonster && obj_monsterTimer.noRightMonster){
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
	switch (obj_testMonsterSprite.randNumType){
		case 1:
			monsterComingSpr = spr_mantisEnteringLeft;
			monsterDamageSpr = spr_mantisDamageLeft;
			monsterAttackingSpr = spr_mantisAttackLeft;
			monsterLeavingSpr = spr_mantisLeavingLeft;
			
			monsterAttackingSound = snd_mantisAttack;
			
			monsterX = 0; 
			monsterY = 250;
			break;
		case 2:
			monsterComingSpr = spr_wolfspiderEnteringLeft;
			monsterDamageSpr = spr_wolfspiderDamageLeft;
			monsterAttackingSpr = spr_wolfspiderIdelLeft;
			monsterLeavingSpr = spr_wolfspiderLeavingLeft;
			monsterX = 0; 
			monsterY = 231;
			break;
	}
	
	//Damage Sprites
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
	
	//sprite animations
	if (tSec == 20){
		sprite_index = monsterComingSpr;
	}
	
	if (tSec == 15){
		sprite_index = monsterAttackingSpr;
	}
	
	if (tSec == 5){
		sprite_index = monsterLeavingSpr;
	}
	
	//Has to be drawn last so it is ontop of everything
	if (tSec >= 6 && tSec <= 15){
		if (!patternUp){
			draw_sprite(spr_up, 0, 416, 160);
			draw_sprite(spr_down, 0, 288, 160);
			draw_sprite(spr_left, 0, 192, 160);
			draw_sprite(spr_right, 0, 96, 160);
		}
		
		if (patternDown){
			draw_sprite(spr_down, 0, 416, 160);
			draw_sprite(spr_left, 0, 288, 160);
			draw_sprite(spr_right, 0, 192, 160);
		}
		
		if (patternLeft){
			draw_sprite(spr_left, 0, 416, 160);
			draw_sprite(spr_right, 0, 288, 160);
		}
		
		if (patternRight){
			draw_sprite(spr_right, 0, 416, 160);
		}
	#endregion
	}
}