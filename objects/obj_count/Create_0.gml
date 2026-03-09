//Default Spites
countSprite = sprite_index;

randNumType = choose(1, 2);

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

damageSprite = function(){
	event_perform(ev_create, 0);
	tMil = 5;
	
	switch (randNumType){
		case 1:
			countSprite = spr_countDamaged;
			break;
		case 2:
			countSprite = spr_countDamagedV2;
			break;
	}
	
	audio_play_sound(snd_countDamage, 1, 0);
	event_perform(ev_alarm, 0);
}