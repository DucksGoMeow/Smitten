if (pausegame){

	draw_sprite(Sprite34, 0, 544, 448);
	draw_sprite(Sprite34, 0, 544, 576);
	
	draw_sprite(Sprite24, 0, x, y);
	
	if (obj_playerHealth.heartOne){
		draw_sprite(spr_heart, 0, 544, 224)
	}
	else if (!obj_playerHealth.heartOne){
		draw_sprite(spr_brokenHeart, 0, 544, 224)
	}
	
	if (obj_playerHealth.heartTwo){
		draw_sprite(spr_heart, 0, 640, 160)
	}
	else if (!obj_playerHealth.heartTwo){
		draw_sprite(spr_brokenHeart, 0, 640, 160)
	}
   
	if (obj_playerHealth.heartThree){
		draw_sprite(spr_heart, 0, 736, 224)
	}
	else if (!obj_playerHealth.heartThree){
		draw_sprite(spr_brokenHeart, 0, 736, 224)
	}
	
	draw_set_colour(c_black)
	draw_text(544, 96, "LEVEL CLEARED");
	draw_text(544, 448, "Continue");
	draw_text(544, 576, "Restart");
	
}