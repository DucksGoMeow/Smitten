if (tSec == 0 && tMil == 0 && startDate){
	startDate = false;
	if (obj_playerHealth.playerHealth == 150){
		startDialogue("L4_3_Hearts");
	}
	else if (obj_playerHealth.playerHealth == 100){
		startDialogue("L4_2_Hearts");
	}
	else if (obj_playerHealth.playerHealth == 50){
		startDialogue("L4_0_1_Hearts");
	}
	else if (obj_playerHealth.playerHealth == 0){
		startDialogue("L4_0_1_Hearts");
	}
}

if (doneDate){
	restartTimer();
}

if (tSec == 0 && tMil == 0 && !startDate && showMenu){
	if (obj_playerHealth.playerHealth == 0){
		instance_create_layer(0, 0, "Instances", obj_levelFailed_Date)
		obj_levelFailed_Date.timerDone = 0;
	}
	else {
		instance_create_layer(0, 0, "Instances", obj_levelCleared_Date)
		obj_levelCleared_Date.timerDone = 0;
	}
	
}