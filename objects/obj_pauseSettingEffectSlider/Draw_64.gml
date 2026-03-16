if (obj_pauseMenu.settingsOpened && obj_pauseMenu.pausegame){
	draw_sprite(sprite_index, image_index, x, y);

	var knob_amount = amtCurrent/amtMax;
	var knob_position_x = x + (sprite_width * knob_amount);

	draw_sprite(spr_Knob, beingDragged, knob_position_x, y);
}