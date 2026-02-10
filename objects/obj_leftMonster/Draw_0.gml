if (!obj_monsterTimer.noMonster){
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
	draw_rectangle(100, 111, 100 + (monsterHealth/monsterHealth)*barWidth, 111 + 10, false)

	/*To show the arrows, but we don't need this anymore
	//The arrows of the mouse direction
	draw_set_color(c_white)
	if(device_mouse_check_button_pressed(0,mb_left)) alarm[0] = -1;

	if(dev0Up){ 
		//how long the arrow sprite stays (from when you move the mouse)
		alarm[0] = room_speed * 2;
		last_valid_shape = TMCT_GetCurrentGesture(0);
	}
	if(alarm[0]){
	  var r = 100;
	  var midx = room_width*.5;
	  var midy = room_height*.7;
		if(last_valid_shape == "RIGHT"){
			draw_arrow(midx-r,midy,midx+r,midy,20)
		}
		if(last_valid_shape == "LEFT"){
			draw_arrow(midx+r,midy,midx-r,midy,20)
		}
		if(last_valid_shape == "UP"){
			draw_arrow(midx,midy+r,midx,midy-r,20)
	    }
		if(last_valid_shape == "DOWN"){
			draw_arrow(midx,midy-r,midx,midy+r,20)
		}
	}*/

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
			#region 2 Arrow
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
				
			case 30:
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
				

			#endregion
			#endregion
		}
	#endregion
	}
}