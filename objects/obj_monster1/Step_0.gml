if (mouse_check_button_pressed(mb_left)){
		monsterHealth -= 50;
}

if (monsterHealth = 0){
	instance_destroy();
}