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