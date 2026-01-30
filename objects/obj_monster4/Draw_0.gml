//Monster Sprite
draw_sprite(sprite_index, image_index, 212, 437);

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

//The arrows of the mouse direction
draw_set_color(c_white)
if(device_mouse_check_button_pressed(0,mb_left)) alarm[0] = -1;
if(dev0Up){ 
	//how long the arrow sprite stays (from when you move the mouse)
    alarm[0] = room_speed * 2
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
}

//sprite animations
if (tSec >= 14 && tSec <= 21){
	sprite_index = spr_testMonsterComing;
}

else if (tSec >= 4 && tSec <= 14){
	sprite_index = spr_testMonsterAttacking;
}

else if (tSec >= 0 && tSec <= 5){
	sprite_index = spr_testMonsterLeaving;
}

//Has to be drawn last so it is ontop of everything
#region Arrow Pattern
if (tSec >= 4 && tSec <= 15){
	if (patternUp){
		draw_sprite(spr_up, 0, 424, 147);
		draw_sprite(spr_right, 0, 360, 147);
		draw_sprite(spr_down, 0, 296, 147);
		draw_sprite(spr_left, 0, 232, 147);
	}

	if (patternRight){
		draw_sprite(spr_right, 0, 424, 147);
		draw_sprite(spr_down, 0, 360, 147);
		draw_sprite(spr_left, 0, 296, 147);
	}

	if (patternDown){
		draw_sprite(spr_down, 0, 424, 147);
		draw_sprite(spr_left, 0, 360, 147);
	}

	if (patternLeft){
		draw_sprite(spr_left, 0, 424, 147);
	}
}

#endregion

