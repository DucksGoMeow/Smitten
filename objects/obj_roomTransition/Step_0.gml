if (tSec == 0 && tMin == 0 && tMil == 0){	
	instance_destroy(obj_count);
	instance_destroy(obj_hunter);

	var target = rm_level1Battle;
	
	if (room == rm_level1Battle) target = rm_level1Date;
	if (room == rm_level2Battle) target = rm_level2Date;
	if (room == rm_level3Battle) target = rm_level3Date;
	if (room == rm_level4Battle) target = rm_level4Date;
	if (room == rm_level5Battle) target = rm_level5Battle2;
	if (room == rm_level5Battle2) target = rm_endScreen;
	TransitionStart(target, seq_moveOut, seq_moveIn);
}