function scr_topics_level1Dialogue(topics){
	#region Introduction
	//??? Speaks more, Hunter is just doing gestures
	topics[$ "Introduction"] = [
		SPEAKER("???", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Your task is very important."),
		TEXTWAUDIO("I need you to take him out."),
  
		// Insert the sneaking out scene
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Hm... there he is. My next bounty. He... smells nice. Like... dried roses.)")
	];
  
	//Cont. Intro (C and H, still put their names but will change to '???' then once they're introduced, it will change to their names.)
	topics[$ "Introduction 2"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Gah! It's JUST my luck that the most stunning man I've ever met is also a monster hunter."),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("No. I'm not here to   wait   what?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("What?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("What?"),
		TEXTWAUDIO("( W H A T ? )"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Nevermind. What's this about not killing me?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I've been hired to... to take you out."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So you HAVE come to– wait. Like... On a date?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Uh. Yeah...?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You were hired to take me... on a date?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mhm."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You? And... me? Are you sure you didn't mishear?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I mean, yeah, they were pretty clear."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("..."),
		TEXTWAUDIO("A fantastic alternative to getting staked to death! Your name, fair Sir...?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hunter. Just Hunter."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Fair Hunter... I, Count Lord, would be delighted to spend an evening with you!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...Alright. Let's go, then."),
		TEXTWAUDIO(" (This'll be my strangest hunt yet...) "),
	];
	#endregion
	
	#region Level 1   Tutorial
	topics[$ "L1_Tutorial"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Strange! Allies of my coven, approaching rapidly in our general direction!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Yeah... they don't look too happy."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Really? Mayhaps they're just excited to see me."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(These monsters are probably after Count...I need to protect him!)"),
		CHOICE("(Do I still remember how to hunt monsters...?)",
			OPTION("Yes.", "Yes."), 
			OPTION("No.", "No.")) 
	];

	topics[$ "Yes." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Of course I do. Can't lose my composure yet..."),
	]; // skip to level 1

	topics[$ "No." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Hm... I'm rusty. I could use a warm up.)"),
	]; // go to level 1 tutorial scene
	#endregion

	#region Level 1   Dating
	#region Dating   Part 1
	topics[$ "L1_Dating"] = [
		TEXTWAUDIO("It's not every day this happens, you know. It's momentous, it's miraculous... perhaps even... forbidden...", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("What is?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh...", function() {obj_textbox.restartDialogue();}, snd_count),
		CHOICE("I think it's quite obvious...", 
			OPTION("Our union?", "Our union?"),
			OPTION("Our eloping?", "Our eloping under moonlight?"),
			OPTION("No, it's not?", "No, it's not?"))
	];
  
	topics[$ "Our union?"] = [
		TEXTWAUDIO("Yes! Our kin would be ripping each other to shreds in the same situation.", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Phew, I read that right...)", snd_hunter),
		GOTO("Cont_L1_Dating"),
	 ];
  
	topics[$ "Our eloping under moonlight?"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Our eloping under moonlight?", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
		CUSTOMTEXTWAUDIO("That's a bit, uh... I meant courting between man and monster– it's taboo.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Crap, was that too forward?!)", snd_hunter),
		GOTO("Cont_L1_Dating"),
	];
  
	topics[$ "No, it's not?"] = [
		TEXTWAUDIO("Oh! My bad for assuming, then. So...a date between man and monster is forbidden.", snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Ohh, that's what he meant!)", snd_hunter),
		GOTO("Cont_L1_Dating"),
	];
  
	topics[$ "Cont_L1_Dating"] = [
		CUSTOMTEXTWAUDIO("Then again...monster, mortal, I've never really cared about all that. Unlike my coven.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I get it. I don't discriminate on who I have to  dismember, either.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("...I knew you were a kindred spirit! It's no wonder I feel so mesmerized by you!", function() { obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKERAUDIO("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Thanks", snd_hunter),
		CHOICE("For a while, I've felt...", 
			OPTION("You're waiting", "...like you're just waiting to sink your fangs in me."),
			OPTION("Nervous, honestly.", "...a little bit nervous, honestly."),
			OPTION("The same", "...the same. You're no bounty."))
	];
	#endregion
	#region Dating - Part 2
	topics[$ "...like you're just waiting to sink your fangs in me."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("...like you're just waiting to sink your fangs in me.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
	
		CUSTOMTEXTWAUDIO("Ah... well... I suppose I... can't fully blame you.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Crap, was that insensitive? I was trying to be hot? I think???)", snd_hunter),
		
		GOTO("Cont_L1_Dating_2"),
	];
  
	topics[$ "...a little bit nervous, honestly."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...a little bit nervous, honestly.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Okay so it's NOT just me! Ahem– I mean... I appreciate your honesty.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(...That was kinda cute.)", snd_hunter),
		
		GOTO("Cont_L1_Dating_2"),
	];
  
	topics[$ "...the same. You're no bounty."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...the same. You're no bounty.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("As exhilarating as that would be... I prefer this.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Maybe I would too.)", snd_hunter),
		
		GOTO("Cont_L1_Dating_2"),
	];
  
	topics[$ "Cont_L1_Dating_2"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Honestly, I wasn't planning on finding you out here.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Oh? Pray tell, was our early encounter merely coincidence?", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mhm. I just like the quiet. Didn't think a bounty'd be here.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Such a calming little spot, isn't it?", function() {obj_textbox.restartDialogue();}, snd_count),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mhm, usually after a hunt. Nice breeze. No noise.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Wind in your hair... free from city hubbub and constant chatter, yes.", function() {obj_textbox.restartDialogue();}, snd_count),
		TEXTWAUDIO("The uh... the coven can be quite loud. It's a nice change of pace, out here."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I figured vampires kept it lowkey. Sorry to hear otherwise.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Hardly! We may be organized, but... my kind seems to enjoy running their mouths to no end. Like we're madly in love with the sound of our own voices!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("L1_Dating_3"),
	];
	#endregion
	#region Dating - Part 3
	topics[$ "L1_Dating_3"] = [
		CHOICE("...Which, I'm starting to realize I'm doing. My apologies.", 
			OPTION("I like your voice", "I like listening to your voice."),
			OPTION("Be in love with mine", "Maybe you should be in love with mine, instead."),
			OPTION("Tend to drag on", "You do tend to drag on."))
	];
  
	topics[$ "I like listening to your voice."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I like listening to your voice.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("The point– uh– stands! I must extend you the same courtesy!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("Cont_L1_Dating_3"),
	];
  
	topics[$ "Maybe you should be in love with mine, instead."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Maybe you should be in love with mine, instead.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
		CUSTOMTEXTWAUDIO("Bro, what...? I mean– pardon?", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("Cont_L1_Dating_3"),
	];
  
	topics[$ "You do tend to drag on."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You do tend to drag on.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Of course, of course!", function() {obj_playerHealth.playerHealth -= 50 && obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("Cont_L1_Dating_3"),
	];
  
	topics[$ "Cont_L1_Dating_3"] = [
		CUSTOMTEXTWAUDIO("Regale me with tales of you! I insist! Your dashing, mysterious veneer won't carry you throughout this entire date!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...I hunt monsters. Uh. I like quiet.", snd_hunter),
 
		CUSTOMTEXTWAUDIO("Fascinating! Tell me about your hunts, then!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Won't... that would be weird? I mean, you're a monster.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Most of us are immortal! Being decapitated is like... a minor inconvenience at best.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hmm... Well, there was this one time.", snd_hunter),
		CUSTOMTEXTWAUDIO("(We talked the rest of the date away, until we both had to go.)", function() {instance_create_layer(0, 0, "Instances", obj_level1HeartEvent)}, snd_hunter),
		
	];
	#endregion
  
	topics[$ "L1_0_Heart"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So... how are you feeling?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("...Hm... not well, I'll be frank.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Oh... I'm... sorry to hear.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("...Maybe I was naive, thinking this could ever work. Call me a hopeless romantic.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Did I do something wrong...?", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Ah... no, I don't believe so. But I don't think we would work well together, even if we weren't man and monster.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Crap...)", snd_hunter),
  
		CUSTOMTEXTWAUDIO("I wish you a good day. But don't expect to see me again.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(...I really should've stuck to monster hunting. I'm not cut out for this.)", function() {obj_level1HeartEvent.doneDate = true}, snd_hunter),
	]; // GAME OVER SCREEN
  
	topics[$ "L1_1_Heart"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So... how are you feeling?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hah, very refreshed. This was quite nice, despite some hiccups.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I really donked up, huh?", snd_hunter),
  
		TEXTWAUDIO("I... believe we both did. However– I can tell you're simply new to this. Or unsure of yourself. Or, maybe injured in some way undetected by both of us.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Wow... yeah, no kidding.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("But I can tell there's something about you, fair Hunter. Something I like. Something I'd like to see <italic>more</italic> of, if you'd like.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(I'm surprisingly really happy to hear that.)", snd_hunter),
		TEXTWAUDIO("Me too. You're really cool.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("I have the body temperature of a corpse!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Makes sense. I'll call you when I'm free.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Farewell! I'd be happy to see you again and know you.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(...He's giving me another chance. Here's to hoping I can do better next time.)", function() {obj_level1HeartEvent.doneDate = true}, snd_hunter),
	];
  
	topics[$ "L1_2_Hearts"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So... how are you feeling?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh, great. It's been far too long since I've had such a good time alone with someone!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Woah. I really hit it off so well with him...)", snd_hunter),

		CUSTOMTEXTWAUDIO("I'd never expected to hit it off so well with a monster hunter, but I'm certainly not complaining.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Seems I finished my bounty, then. But would you... wanna do this again sometime?", snd_hunter),
  
		CUSTOMTEXTWAUDIO("I'd love to! Especially since it'll be off the clock for you, so to speak. I'll be sure to send a message.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Awesome. Good night, Count.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Good night, fair Hunter!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(That went really well. Maybe I have a knack for this... or, I just can't help myself around him. Either way... can't wait to see him again.)", function() {obj_level1HeartEvent.doneDate = true}, snd_hunter),
	];
  
	topics[$ "L1_3_Hearts"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So... how are you feeling?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("I had an incredible time, fair Hunter. Had I a living, working heart, it would have been racing!", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(My working one already is... wait– can he sense that? Calm down.)", snd_hunter),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Ditto. On the incredible time part, I mean.", snd_hunter),
  
		CUSTOMTEXTWAUDIO("Oh– really? Wonderful! That's– wow, I've frankly been worrying if I made a good impression this whole time.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Don't smile, Hunter. Or. Do. Smile? What should I do here?)"),
		TEXTWAUDIO("Trust me, you did. And if you feel the same, maybe you'd wanna see each other again sometime?", snd_hunter),
  
		CUSTOMTEXTWAUDIO("I'd be delighted to! I'll be sure to get in touch as soon as I can. Have a wonderful evening.", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You too. I'll be sure to keep an eye out for you.", snd_hunter),
		TEXTWAUDIO("(Off he goes... and here I am trying not to explode.)", snd_hunter),
		CUSTOMTEXTWAUDIO("(I'm not gonna be able to wait that long. I'm so hyped. Can't have seen that going any better than it did! Man, I'm so glad I took this contract...!)", function() {obj_level1HeartEvent.doneDate = true}, snd_hunter),
	]; 
	#endregion
}