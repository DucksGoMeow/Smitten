if (pausegame){
	draw_sprite(spr_levelClearedBanner, 0, 384, 101);
	
	draw_sprite(spr_continueButton, 0, 533, 400.9);
	draw_sprite(spr_restartButton, 0, 533, 516.4);
	
	if (obj_playerHealth.heartOne){
		draw_sprite(spr_heart, 0, 510, 224)
	}
	else if (!obj_playerHealth.heartOne){
		draw_sprite(spr_brokenHeart, 0, 510, 224)
	}
	
	if (obj_playerHealth.heartTwo){
		draw_sprite(spr_heart, 0, 633, 160)
	}
	else if (!obj_playerHealth.heartTwo){
		draw_sprite(spr_brokenHeart, 0, 633, 160)
	}
   
	if (obj_playerHealth.heartThree){
		draw_sprite(spr_heart, 0, 760, 224)
	}
	else if (!obj_playerHealth.heartThree){
		draw_sprite(spr_brokenHeart, 0, 760, 224)
	}
}