function scr_topics_level1Dialogue(topics){

	//??? Speaks more, Hunter is just doing gestures
	topics[$ "Introduction"] = [
		SPEAKER("???", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Your task is very important."),
		TEXT("I need you to take him out."),
  
		// Insert the sneaking out scene
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Hm… there he is. My next bounty. He… smells nice. Like… dried roses.)")
	];
  
	//Cont. Intro (C and H, still put their names but will change to '???' then once they're introduced, it will change to their names.)
	topics[$ "Introduction 2"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Gah! It's JUST my luck that the most stunning man I've ever met is also a monster hunter."),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("No. I'm not here to-- wait-- what?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("What?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("What?"),
		TEXT("( W H A T ? )"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Nevermind. What's this about not killing me?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("I've been hired to... to take you out."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("So you HAVE come to– wait. Like... On a date?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Uh. Yeah...?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("You were hired to take me… on a date?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Mhm."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("You? And… me? Are you sure you didn't mishear?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("I mean, yeah, they were pretty clear."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("..."),
		TEXT("A fantastic alternative to getting staked to death! Your name, fair Sir…?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Hunter. Just Hunter."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Fair Hunter… I, Count Lord, would be delighted to spend an evening with you!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("...Alright. Let’s go, then."),
		TEXT(" (This’ll be my strangest hunt yet…) "),
	];

//Level 1 - Tutorial

	topics[$ "L1_Tutorial"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Strange! Allies of my coven, approaching rapidly in our general direction!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Yeah… they don’t look too happy."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Really? Mayhaps they’re just excited to see me."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(These monsters are probably after Count...I need to protect him!)"),
		CHOICE("(Do I still remember how to hunt monsters...?)",
			OPTION("Yes.", "Yes."), 
			OPTION("No.", "No.")) 
	];

	topics[$ "Yes." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Of course I do. Can’t lose my composure yet…"),
	]; // skip to level 1

	topics[$ "No." ] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Hm… I’m rusty. I could use a warm-up.)"),
	]; // go to level 1 tutorial scene
  

	topics[$ "L1_Dating"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("It’s not every day this happens, you know. It’s momentous, it’s miraculous… perhaps even… forbidden."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("What is…?"),
	];
  
	topics[$ "L1_Dating_1"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Oh, I think it’s quite obvious…"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CHOICE("Make a choice.", 
			OPTION("Our union?", "Our union?"),
			OPTION("Our eloping under moonlight?", "Our eloping under moonlight?"),
			OPTION("No, it’s not?", "No, it’s not?"))
	];
  
	topics[$ "Our union?"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Yes! Our kin would be ripping each other to shreds in the same situation."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Phew, I read that right…)"),
	 ];
  
	topics[$ "Our eloping under moonlight?"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("That’s a bit, uh… I meant courting between man and monster– it’s taboo."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Crap, was that too forward?!)"),
	];
  
	topics[$ "No, it's not?"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Oh! My bad for assuming, then. So– a date between man and monster is forbidden."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Ohh, that’s what he meant!)"),
	];
  
	topics[$ "Cont_L1_Dating"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Then again– monster, mortal, I’ve never really cared about all that. Unlike my coven."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("I get it. I don’t discriminate on who I have to  dismember, either."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("…I knew you were a kindred spirit! It’s no wonder I feel so mesmerized by you!"),
	];
  
	topics[$ "L1_Dating_2"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CHOICE("Thanks. For a while, I’ve felt…", 
			OPTION("…like you’re just waiting to sink your fangs in me.", "…like you’re just waiting to sink your fangs in me."),
			OPTION("…a little bit nervous, honestly.", "…a little bit nervous, honestly."),
			OPTION("…the same. You’re no bounty.", "…the same. You’re no bounty."))
	];
  
	topics[$ "…like you’re just waiting to sink your fangs in me."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Ah… well… I suppose I… can’t fully blame you."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Crap, was that insensitive? I was trying to be hot? I think?)"),
	];
  
	topics[$ "…a little bit nervous, honestly."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Okay so it's NOT just me! Ahem– I mean… I appreciate your honesty."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(...That was kinda cute.)"),
	];
  
	topics[$ "…the same. You’re no bounty."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("As exhilarating as that would be… I prefer this."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Maybe I would too.)"),
	];
  
	topics[$ "Cont_L1_Dating_2"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Honestly, I wasn't planning on finding you out here."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Oh? Pray tell, was our early encounter merely coincidence?"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Mhm. I just like the quiet. Didn’t think a bounty’d be here."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Such a calming little spot, isn’t it?"),
 
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Mhm, usually after a hunt. Nice breeze. No noise."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Wind in your hair… free from city hubbub and constant chatter, yes."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("The uh… the coven can be quite loud. It’s a nice change of pace, out here."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("I figured vampires kept it lowkey. Sorry to hear otherwise."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Hardly! We may be organized, but… my kind seems to enjoy running their mouths to no end. Like we’re madly in love with the sound of our own voices!"),
	];
  
	topics[$ "L1_Dating_3"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		CHOICE("…Which, I’m starting to realize I’m doing. My apologies.", 
			OPTION("I like listening to your voice.", "I like listening to your voice."),
			OPTION("Maybe you should be in love with mine, instead.", "Maybe you should be in love with mine, instead."),
			OPTION("You do tend to drag on.", "You do tend to drag on."))
	];
  
	topics[$ "I like listening to your voice."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("The point– uh– stands! I must extend you the same courtesy!")
	];
  
	topics[$ "Maybe you should be in love with mine, instead."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Bro, what…? I mean– pardon?")
	];
  
	topics[$ "You do tend to drag on."] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Of course, of course!")
	];
  
	topics[$ "Cont_L1_Dating_3"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Regale me with tales of you! I insist! Your dashing, mysterious veneer won’t carry you throughout this entire date!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("…I hunt monsters. Uh. I like quiet."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Fascinating! Tell me about your hunts, then!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Won’t… that would be weird? I mean, you’re a monster."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Most of us are immortal! Being decapitated is like… a minor inconvenience at best."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Hmm… Well, there was this one time."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(We talked the rest of the date away, until we both had to go.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("So… how are you feeling?"),
	];
  
	topics[$ "0_Heart"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("…Hm… not well, I’ll be frank."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Oh… I’m… sorry to hear."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("…Maybe I was naive, thinking this could ever work. Call me a hopeless romantic."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Did I do something wrong…?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Ah… no, I don’t believe so. But I don’t think we would work well together, even if we weren’t man and monster."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Crap…)"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I wish you a good day. But don’t expect to see me again."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(...I really should’ve stuck to monster-hunting. I’m not cut out for this.)"),
	]; // GAME OVER SCREEN
  
	topics[$ "1_Heart"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Hah, very refreshed. This was quite nice, despite some hiccups."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("I really donked up, huh?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I… believe we both did. However– I can tell you’re simply new to this. Or unsure of yourself. Or, maybe injured in some way undetected by both of us."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Wow… yeah, no kidding."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("But I can tell there’s something about you, fair Hunter. Something I like. Something I’d like to see <italic>more</italic> of, if you’d like."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(I’m surprisingly really happy to hear that.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Me too. You’re really cool."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I have the body temperature of a corpse!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Makes sense. I’ll call you when I’m free."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Farewell! I’d be happy to see you again and know you."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(...He’s giving me another chance. Here’s to hoping I can do better next time.)"),
	];
  
	topics[$ "2_Hearts"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Oh, great. It’s been far too long since I’ve had such a good time alone with someone!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Woah. I really hit it off so well with him…)"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I’d never expected to hit it off so well with a monster hunter, but I’m certainly not complaining."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Seems I finished my bounty, then. But would you… wanna do this again sometime?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I’d love to! Especially since it’ll be off-the-clock for you, so to speak. I’ll be sure to send a message."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Awesome. Good night, Count."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Good night, fair Hunter!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(That went really well. Maybe I have a knack for this… or, I just can’t help myself around him. Either way… can’t wait to see him again.)"),
	];
  
	topics[$ "3_Hearts"] = [
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I had an incredible time, fair Hunter. Had I a living, working heart, it would have been racing!"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(My working one already is… wait– can he sense that? Calm down.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Ditto. On the incredible time part, I mean."),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("Oh– really? Wonderful! That’s– wow, I’ve frankly been worrying if I made a good impression this whole time."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Don’t smile, Hunter. Or. Do. Smile? What should I do here?)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("Trust me, you did. And if you feel the same, maybe you’d wanna see each other again sometime?"),
  
		SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
		TEXT("I’d be delighted to! I’ll be sure to get in touch as soon as I can. Have a wonderful evening."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("You too. I’ll be sure to keep an eye out for you."),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(Off he goes… and here I am trying not to explode.)"),
  
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXT("(I’m not gonna be able to wait that long. I'm so hyped. Can’t have seen that going any better than it did! Man, I’m so glad I took this contract…!)"),
	]; 
}