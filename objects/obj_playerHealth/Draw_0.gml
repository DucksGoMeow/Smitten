if (room == rm_levelBattle){
	if (heartOne){
		draw_sprite(spr_heart, 0, 928, 32)
	}
	else if (!heartOne){
		draw_sprite(spr_brokenHeart, 0, 928, 32)
	}
	
	if (heartTwo){
		draw_sprite(spr_heart, 0, 1088, 32)
	}
	else if (!heartTwo){
		draw_sprite(spr_brokenHeart, 0, 1088, 32)
	}

	if (heartThree){
		draw_sprite(spr_heart, 0, 1248, 32)
	}
	else if (!heartThree){
		draw_sprite(spr_brokenHeart, 0, 1248, 32)
	}
}