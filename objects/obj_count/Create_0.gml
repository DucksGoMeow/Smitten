//Default Spites
countSprite = sprite_index;

tMin = 0;
tSec = 0;
tMil = 1; //tenth of a second

alarm[1] = 6; // 60 frames per second 

attackAnimation = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	countSprite = spr_countShocked;
	event_perform(ev_alarm, 0);
}