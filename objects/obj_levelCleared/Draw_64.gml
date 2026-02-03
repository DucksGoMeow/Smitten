if (pausegame){

	draw_sprite(Sprite34, 0, 533, 400.9);
	draw_sprite(Sprite34, 0, 533, 516.4);
	
	if (obj_playerHealthLv1.heartOne){
		draw_sprite(spr_heart, 0, 537, 224)
	}
	else if (!obj_playerHealthLv1.heartOne){
		draw_sprite(spr_brokenHeart, 0, 537, 224)
	}
	
	if (obj_playerHealthLv1.heartTwo){
		draw_sprite(spr_heart, 0, 633, 160)
	}
	else if (!obj_playerHealthLv1.heartTwo){
		draw_sprite(spr_brokenHeart, 0, 633, 160)
	}
   
	if (obj_playerHealthLv1.heartThree){
		draw_sprite(spr_heart, 0, 729, 224)
	}
	else if (!obj_playerHealthLv1.heartThree){
		draw_sprite(spr_brokenHeart, 0, 729, 224)
	}
	
	draw_set_colour(c_black)
	draw_text(533, 96, "LEVEL CLEARED");
	draw_text(533, 400.9, "Continue");
	draw_text(533, 516.4, "Restart");
	
}