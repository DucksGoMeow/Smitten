if (tSec == 0 && tMil == 0 && startDate){
	startDate = false;
	if (obj_playerHealth.playerHealth == 150){
		startDialogue("L1_3_Hearts");
	}
	else if (obj_playerHealth.playerHealth == 100){
		startDialogue("L1_2_Hearts");
	}
	else if (obj_playerHealth.playerHealth == 50){
		startDialogue("L1_1_Heart");
	}
	else if (obj_playerHealth.playerHealth == 0){
		startDialogue("L1_0_Heart");
	}
}

if (doneDate){
	room_goto(rm_endScreen);
}