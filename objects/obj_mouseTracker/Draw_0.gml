if (mouse_check_button(mb_left)){
	if (mouseDirX > 700 && mouseDirY < 500 && mouseDirY > 300){
		draw_sprite(spr_right, 0, 683, 384);
	}
	else if (mouseDirX < 700 && mouseDirY < 500 && mouseDirY > 300){
		draw_sprite(spr_left, 0, 683, 384);
	}
	
	if (mouseDirY < 300){
		draw_sprite(spr_up, 0, 683, 384);
	}
	else if (mouseDirY < 400){
		draw_sprite(spr_down, 0, 683, 384);
	}
}