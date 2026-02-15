if (active) {
	if (keyboard_check_pressed(vk_enter)) {
		active = false;
		startDialogue("Effects", activate);
	}
}