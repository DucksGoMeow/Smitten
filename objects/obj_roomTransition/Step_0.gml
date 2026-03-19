if (tSec == 0 && tMin == 0 && tMil == 0){
	instance_destroy(obj_count);
	instance_destroy(obj_hunter);

	
	var target = rm_levelBattle;
	
	if (room == rm_levelBattle) target = rm_levelDate;
	TransitionStart(target, seq_moveOut, seq_moveIn);
}