if (playerHealth == 100){
	heartThree = false;
}
else if (playerHealth == 50){
	heartTwo = false;
}
else if (playerHealth == 0){
	heartOne = false;
	obj_monsterTimer.monsterFinished = true;
}