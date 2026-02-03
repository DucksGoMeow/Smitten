if (gameStarted == false){
	draw_sprite(Sprite34, 0, 533, 404.8);
	draw_set_colour(c_black);
	draw_text(533, 404.8, "Start");
}

if (gameStarted == true){
	draw_set_colour(c_black);
	draw_text(533, 404.8, "Continue");
	draw_sprite(Sprite34, 0, 533, 404.8);

}