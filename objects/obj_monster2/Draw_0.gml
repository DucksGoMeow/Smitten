draw_sprite(spr_testMonster, 0, 212, 437);

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
draw_rectangle(100, 111.9774, 100 + (monsterHealth/monsterHealth)*barWidth, 111.9774 + 10, false)

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