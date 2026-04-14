function scr_topics_level5Dialogue(topics){
	
	#region Level 5 Intro
	
	topics[$ "L5_Intro"] = [
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Count... Please stay safe.)", snd_hunter),
	TEXTWAUDIO("(Why'd this have to happen...)", snd_hunter),
	TEXTWAUDIO("(Deep breaths. Deep breaths...)", snd_hunter),
	TEXTWAUDIO("(Okay...)", snd_hunter),
	TEXTWAUDIO("(I need to get there in time. Scarab knows what they're doing to him in that mansion.)", snd_hunter),
	CUSTOMTEXTWAUDIO("",  function() {room_goto(rm_level5Tutorial)}, snd_hunter),
	
	// Transition to Battle
	];
	
	#endregion
	
	#region Level 5 Arrow Gimmick 
	topics[$ "L5_Arrow_Tut"] = [
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Huh? What the Scarab...?)", snd_hunter),
	CUSTOMTEXTWAUDIO("(They're moving a lot more unpredictably... like they're faking me out.)", function() {obj_tutorialMonster3.stopPlaying = false}, snd_hunter),
	TEXTWAUDIO("(Seems like they're also trying to attack from the opposite direction to throw me off.)", snd_hunter),
	TEXTWAUDIO("[When you see a suspicious-looking arrow, attack in the opposite direction of where it's pointing!]", snd_hunter),
	CUSTOMTEXTWAUDIO("",  function() {obj_tutorialMonster3.startBattleAnimation();}, snd_hunter),
	
	// Continue Battle
	];
	
	topics[$ "L5_No_Arrow_Tut"] = [
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Of course!)", snd_hunter),
	TEXTWAUDIO("(They're moving a lot more unpredictably... like they're faking me out!)", snd_hunter),
	TEXTWAUDIO("(Seems like they're also trying to attack from the opposite direction to throw me off!)", snd_hunter),
	TEXTWAUDIO("(But they're no match for me!)", snd_hunter),
	CUSTOMTEXTWAUDIO("",  function() {room_goto(rm_level5Battle)}, snd_hunter),
	
	// Continue Battle
	];
	
	
	#endregion
	
	#region Level 5 Before Battle
	topics[$ "L5_Before_Battle"] = [
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Count!", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter...?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yes? I'm here, let him go!", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You... you really came for me!",  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Of course...! I'm here to protect you, like always.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Oh? I'm afraid that won't happen. Son... you see why we must be rid of this pest?", function() {instance_create_layer(0, 0, "Instances", obj_mommySprite)}, snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Mother, I...", function() {obj_count.countSpriteLeft = true}, snd_count), 
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Constantly, they infest our lives... wishing, begging, they could be like us.", snd_mommy),
	TEXTWAUDIO("You are the heir to monsters, beings above and all.", snd_mommy),
	TEXTWAUDIO("You need not debase yourself just to follow a fleeting feeling with our prey...", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yes... I've thought about what you've said...", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Am I too late?)", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("This is your last chance, Count... take out this... insect, and you will have redeemed yourself.", snd_mommy ),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(No...)", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...If you say so. If there is no other choice. Hunter...", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...Wait-", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I'd like to take you out...", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You know DAMN well that's NOT WHAT I--", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("-on a date!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Smile, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("..I'd love to.", snd_hunter),
	TEXTWAUDIO("How's a brawl at your place sound?", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...You lead the way!", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...You really are a lost cause, you brat.", snd_mommy),
	CUSTOMTEXTWAUDIO("", function() {room_goto(rm_level5Battle2)}, snd_count),
	];
	
	// Transition to Part 2 of Battle
	#endregion

	#region Level 5 Date
	topics[$ "L5_Date"] = [
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter! She's down!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("*Cough* ....Yeah... seems like the rest of the monsters dipped.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter! Hunter!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...Huh?", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("My sugar cube, my cheese slice, my, oh, screw it, are you okay oh my Scarab,",  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Snrk...", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh...? What's so funny?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("..You're fussing. It's adorable.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh quit it! I thought you were hit! You look so exhausted... so drained... I can't help it.", snd_count),
	TEXTWAUDIO("My dear, you need to rest.", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yeah... when we leave. Right now... I just wanna look at you.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You know... I am a little irked that you hadn't brought her up sooner. You should know by this point,", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You want to see me, no holds barred. I know...", snd_hunter),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...From now on, I want to do that for you. Be my whole self.", snd_hunter),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Count, I wanna go steady with you. A proper relationship.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Scarab above... the heavens could rain upon me as many blessings as I pray for, and yet they could never match,", snd_count),
	TEXTWAUDIO("Oh, whatever, man, you get the point! Yes! Absolutely, yes! I would love to!?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh, thank god... I was terrified you'd still say no for some reason.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Nonsense. You don't have to fear anything with me, anymore... I trust you.", snd_count),
	TEXTWAUDIO("I love you, my beloved Hunter.", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("...I love you, Count. More than I can say.", function() {instance_create_layer(0, 0, "Instances", obj_endingCutscene)}, snd_hunter),
	
	// [Count pulls Hunter for a kiss, Hunter reciprocates it back and pans up to the sunrise]
	// [GAME END]
	// [CREDITS ROLL]
	];
	#endregion
	
} 