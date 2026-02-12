//Default Spites
hunterSprite = sprite_index;

tMin = 0;
tSec = 0;
tMil = 1; //tenth of a second

alarm[1] = 6; // 60 frames per second 

upAnimation = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	hunterSprite = hunterLeft;
	event_perform(ev_alarm, 0);
}

downAnimation = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	hunterSprite = hunterDown;
	event_perform(ev_alarm, 0);
}

leftAnimation = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	hunterSprite = hunterLeft;
	event_perform(ev_alarm, 0);
}

rightAnimation = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	hunterSprite = hunterRight;
	event_perform(ev_alarm, 0);
}