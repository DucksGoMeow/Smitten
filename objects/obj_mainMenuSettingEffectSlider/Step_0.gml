if (point_in_rectangle(mouse_x, mouse_y, 
      x - sprite_xoffset, y - sprite_yoffset, 
      x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height)) {
    if (mouse_check_button_pressed(mb_left)) {
		beingDragged = true;
	}
}

if(beingDragged == true) {
	
	if(mouse_x > x) {
		var xx = abs(x - mouse_x);
		var amount = xx / sprite_width;
	
		amount = clamp(amount, 0, 1);
		amtCurrent = amount * 100;
	} else {
		amtCurrent = 0;
	}
}