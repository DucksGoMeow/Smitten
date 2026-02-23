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
		TEXTWAUDIO("Our eloping under moonlight?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("That's a bit, uh... I meant courting between man and monster– it's taboo.", function() {obj_playerHealth.playerHealth -= 50 && obj_textbox.restartDialogue();}, snd_count),
  
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
		TEXTWAUDIO("Honestly, I wasn't planning on finding you out here."),
  
		CUSTOMTEXTWAUDIO("Oh? Pray tell, was our early encounter merely coincidence?", function() {obj_textbox.restartDialogue();}, snd_count),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mhm. I just like the quiet. Didn't think a bounty'd be here."),
  
		CUSTOMTEXTWAUDIO("Such a calming little spot, isn't it?", function() {obj_textbox.restartDialogue();}, snd_count),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Mhm, usually after a hunt. Nice breeze. No noise."),
  
		CUSTOMTEXTWAUDIO("Wind in your hair... free from city hubbub and constant chatter, yes.", function() {obj_textbox.restartDialogue();}, snd_count),
		TEXTWAUDIO("The uh... the coven can be quite loud. It's a nice change of pace, out here."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I figured vampires kept it lowkey. Sorry to hear otherwise.", snd_count),
  
		CUSTOMTEXTWAUDIO("Hardly! We may be organized, but... my kind seems to enjoy running their mouths to no end. Like we're madly in love with the sound of our own voices!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("L1_Dating_3"),
	];
	#endregion
	
	topics[$ "L1_Dating_3"] = [
		CHOICE("...Which, I'm starting to realize I'm doing. My apologies.", 
			OPTION("I like listening to your voice.", "I like listening to your voice."),
			OPTION("Maybe you should be in love with mine, instead.", "Maybe you should be in love with mine, instead."),
			OPTION("You do tend to drag on.", "You do tend to drag on."))
	];
  
	topics[$ "I like listening to your voice."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("The point– uh– stands! I must extend you the same courtesy!")
	];
  
	topics[$ "Maybe you should be in love with mine, instead."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Bro, what...? I mean– pardon?")
	];
  
	topics[$ "You do tend to drag on."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Of course, of course!")
	];
  
	topics[$ "Cont_L1_Dating_3"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Regale me with tales of you! I insist! Your dashing, mysterious veneer won't carry you throughout this entire date!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...I hunt monsters. Uh. I like quiet."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Fascinating! Tell me about your hunts, then!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Won't... that would be weird? I mean, you're a monster."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Most of us are immortal! Being decapitated is like... a minor inconvenience at best."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hmm... Well, there was this one time."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(We talked the rest of the date away, until we both had to go.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("So... how are you feeling?"),
	];
  
	topics[$ "0_Heart"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...Hm... not well, I'll be frank."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Oh... I'm... sorry to hear."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...Maybe I was naive, thinking this could ever work. Call me a hopeless romantic."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Did I do something wrong...?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Ah... no, I don't believe so. But I don't think we would work well together, even if we weren't man and monster."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Crap...)"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I wish you a good day. But don't expect to see me again."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(...I really should've stuck to monster hunting. I'm not cut out for this.)"),
	]; // GAME OVER SCREEN
  
	topics[$ "1_Heart"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hah, very refreshed. This was quite nice, despite some hiccups."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I really donked up, huh?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I... believe we both did. However– I can tell you're simply new to this. Or unsure of yourself. Or, maybe injured in some way undetected by both of us."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Wow... yeah, no kidding."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("But I can tell there's something about you, fair Hunter. Something I like. Something I'd like to see <italic>more</italic> of, if you'd like."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(I'm surprisingly really happy to hear that.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Me too. You're really cool."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I have the body temperature of a corpse!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Makes sense. I'll call you when I'm free."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Farewell! I'd be happy to see you again and know you."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(...He's giving me another chance. Here's to hoping I can do better next time.)"),
	];
  
	topics[$ "2_Hearts"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Oh, great. It's been far too long since I've had such a good time alone with someone!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Woah. I really hit it off so well with him...)"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I'd never expected to hit it off so well with a monster hunter, but I'm certainly not complaining."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Seems I finished my bounty, then. But would you... wanna do this again sometime?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I'd love to! Especially since it'll be off the clock for you, so to speak. I'll be sure to send a message."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Awesome. Good night, Count."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Good night, fair Hunter!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(That went really well. Maybe I have a knack for this... or, I just can't help myself around him. Either way... can't wait to see him again.)"),
	];
  
	topics[$ "3_Hearts"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I had an incredible time, fair Hunter. Had I a living, working heart, it would have been racing!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(My working one already is... wait– can he sense that? Calm down.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Ditto. On the incredible time part, I mean."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Oh– really? Wonderful! That's– wow, I've frankly been worrying if I made a good impression this whole time."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Don't smile, Hunter. Or. Do. Smile? What should I do here?)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Trust me, you did. And if you feel the same, maybe you'd wanna see each other again sometime?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I'd be delighted to! I'll be sure to get in touch as soon as I can. Have a wonderful evening."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("You too. I'll be sure to keep an eye out for you."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Off he goes... and here I am trying not to explode.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(I'm not gonna be able to wait that long. I'm so hyped. Can't have seen that going any better than it did! Man, I'm so glad I took this contract...!)"),
	]; 
	#endregion
}