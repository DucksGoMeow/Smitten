function scr_topics_tutorialDialogue(topics){
	#region Introduction
	topics[$ "Introduction"] = [
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Gah! It's JUST my luck that the most stunning man I've ever met is also a monster hunter.", snd_count),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("No. I'm not here to...wait...what?", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("What?", snd_count ),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("What?", snd_hunter),
		TEXTWAUDIO("( W H A T ? )"),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Nevermind. What's this about not killing me?", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I've been hired to... to take you out, vampire.", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So you HAVE come to, wait. Like... On a date?", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Uh. Yeah...?", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You were hired to take me... on a date? By who?", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mysterious giant lady.", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You? And... me? Are you sure you didn't mishear?", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I mean, yeah, they were pretty clear.", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...", snd_count),
		TEXTWAUDIO("A fantastic alternative to getting staked to death! Your name, fair Sir...?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hunter. Just Hunter.", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Fair Hunter... I, Count Lord, would be delighted to spend an evening with you!", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...Alright. Let's go, then.", snd_hunter),
		CUSTOMTEXTWAUDIO("(This'll be my strangest hunt yet...)", function() {instance_create_layer(0, 0, "Instances", obj_startingTutorialDialouge)}, snd_hunter),
	];
	#endregion
	
	#region Level 1  Tutorial
	topics[$ "L1_Tutorial"] = [
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Strange! Allies of my coven, approaching rapidly in our general direction!", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Yeah... they don't look too happy.", snd_hunter),
  
		SPEAKER("Count", spr_dialoguePortraitCount, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Really? Mayhaps they're just excited to see me. Is that my uncle?", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(These monsters are probably after Count...I need to protect him!)", snd_hunter),
		CHOICE("(Do I still remember how to hunt monsters...?)",
			OPTION("No.", "No."), //do the tutorial scene
			OPTION("Yes.", "Yes.")) // skip to level 1
			
	];

	topics[$ "Yes." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Of course I do. Can't lose my composure yet...)", function() {obj_tutorialMonster.skipTutorialAnimation();}, snd_hunter),
	]; 


	topics[$ "No." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Hm... I'm rusty. I could use a warm up.)", function() {obj_tutorialMonster.startBattleAnimation();}, snd_hunter),
		TEXTWAUDIO("(That arrow shows which direction I need to attack the monster)", snd_hunter),
		TEXTWAUDIO("(Move the MOUSE in the direction of the arrow while pressing LEFT CLICK)", snd_hunter),
	]; 
	
	topics[$ "Failed Tutorial" ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Hm...No not like that)", snd_hunter),
		TEXTWAUDIO("(I don't want him getting hurt)", snd_hunter),
		CUSTOMTEXTWAUDIO("(Move the MOUSE in the direction of the arrow while pressing LEFT CLICK)", function() {obj_tutorialMonster.startBattleAnimation();}, snd_hunter),
	]; 
	
	topics[$ "Defeated Monster" ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Another one is coming, lets try this again)", function() {obj_tutorialMonster2.startBattleAnimation();}, snd_hunter),
		TEXTWAUDIO("(This monster has more than one arrow)", snd_hunter),
		TEXTWAUDIO("(I need to follow the arrow closest to me)", snd_hunter),
	]; 
	
	topics[$ "Failed Tutorial 2" ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Hm...No not like that)", snd_hunter),
		TEXTWAUDIO("(I don't want him getting hurt)", snd_hunter),
		TEXTWAUDIO("(I need to follow the arrow closest to me)", snd_hunter),
		CUSTOMTEXTWAUDIO("(Move the MOUSE in the direction of the arrow while pressing LEFT CLICK)", function() {obj_tutorialMonster2.startBattleAnimation();}, snd_hunter),
	]; 
	
	topics[$ "Completed Tutorial" ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Still got it in me)", snd_hunter),
		TEXTWAUDIO("(The monsters will get stronger as we keep going)", snd_hunter),
		TEXTWAUDIO("(I need to be ready for anything)", snd_hunter),
		CUSTOMTEXTWAUDIO("", function() {room_goto(rm_level1Battle)}, snd_hunter),
	]; 
	#endregion
}