function scr_topics_level2Dialogue(){
	
	#region Level 2 Intro
	
	topics[$ "L2_Intro"] = [
		TEXTWAUDIO("We meet again, my dear Hunter!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Thank you for coming.", snd_hunter),
		
		TEXTWAUDIO("Why of course! Pray tell, what other surprises do you have in store for me?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Well… I’ll show you the way.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("hoho! A surprise? Let us make haste then! Especially on the count of my fellow monsters prowling around! Still weird.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(I clocked them earlier… I guess my employer’s got some connections to the supernatural. And she’s not happy.)", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Count seems none the wiser that they’re here for him, though. Better get up to a higher vantage point.)", snd_hunter)
		];
	
	#endregion
	
	#region Level 2 Date
	topics[$ "L2_Date"] = [
	TEXTWAUDIO("Oh my dear Hunter! This… is a sight to behold!", snd_count),
	
	SPEAKERAUDIO("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CHOICE("Well....", 
			OPTION("It is a beautiful sight... though" , "nothing compares to you."),
			OPTION("Could be better.", "But I don’t really mind as long as you’re with me."),
			OPTION("Um…yeah", "it looks great!"))
			
	];
	
	topics[$ "nothing compares to you."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("nothing compares to you", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Did I just…)", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(Why did I say that outloud?!)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh my… Getting enthusiastic, are we? You truly know how to warm a vampire’s cold, dead heart.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("Cont_L2_Dating"),
		
		];
		
	topics[$ "But I don’t really mind as long as you’re with me."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("But I don’t really mind as long as you’re with me.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Ohh?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I-I mean-", snd_hunter),
		
		CUSTOMTEXTWAUDIO("HAH! No take-backsies, my sweet!?", snd_count),
		CUSTOMTEXTWAUDIO("But really, I think I wouldn’t mind being anywhere with you too.", snd_count),
		CUSTOMTEXTWAUDIO("Say, why won’t we go on a world tour? I know a guy who knows a guy who knows a guy who-", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Nnnno thanks.", snd_hunter),
		
		GOTO("Cont_L2_Dating"),
		
		];
		
	topics[$ "it looks great!"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("it looks great!", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
		CUSTOMTEXTWAUDIO("Ah. Nervous", "are we?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(…did I say something wrong?)", snd_hunter),
		
		GOTO("Cont_L2_Dating"),
		
		];
		
	topics[$ "Cont_L2_Dating"] = [
		CUSTOMTEXTWAUDIO("I’d rather be anywhere than home any day.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("...?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh, don’t look at me like that. It’s… they’re usually manageable.", snd_count),
		CUSTOMTEXTWAUDIO("My family has just been EGREGIOUSLY annoying recently, is all.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Tell me about it. I mean, they keep trying to kill me.", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Though… not just me, seems like…)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("I am so sorry about them. Their utter vitriol for humanity aside...baseless vitriol, I might add–", snd_count),
		CUSTOMTEXTWAUDIO("They try to dictate every aspect of my life! For one– my vocabulary!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("...The way you speak, huh? You are pretty verbose.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Not by choice. My fellow beasts tell me that to speak the tongue of a lesser being is run filth through one’s own tongue and– ", function() {obj_textbox.restartDialogue();}, snd_count),
		
		];
		
		CUSTOMTEXTWAUDIO("Gah– see? It’s a habit!", function() {obj_textbox.restartDialogue();}, snd_count)
			CHOICE("I think it's quite obvious...", 
				OPTION("But it makes you sound more noble", "Isn’t that nice?"),
				OPTION("(Yeah, you’re kinda hard to understand sometimes.)", "(Yeah, you’re kinda hard to understand sometimes.)"),
				OPTION("They… they make you act like this?", "They… they make you act like this?"))
				
	topics[$ "Isn't that nice?"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Isn’t that nice?", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
		CUSTOMTEXTWAUDIO("I sound pompous. I’m not above anybody else. I shouldn’t talk as if I am. Not like…", snd_count),
		CUSTOMTEXTWAUDIO("Nevermind.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(The air feels colder now…)", snd_hunter),
		
		GOTO("Cont_L2_Dating_2"),
	];
	
	topics[$ "(Yeah, you’re kinda hard to understand sometimes.)"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Yeah, it’s kinda cringe.", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Wait, should I have said that…)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Haha! I’m afraid you got your thoughts and words mixed up!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Words, Hunter. Filter.)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Imagine it’s like– like the witching hour. And rather than stalking within the shadows, the ‘terror’ from meaningless jargon holds priority!", function() {obj_textbox.restartDialogue();}, snd_count),
		CUSTOMTEXTWAUDIO("Not that I care for violence… but it’s as if the grandstanding riffraff…", snd_count),
		CUSTOMTEXTWAUDIO("Blahblahblah, you get the jist. It’s so goofy, I’m glad you said it!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Phew… at least he found it funny…)", snd_hunter),

		
		GOTO("Cont_L2_Dating_2"),
	];
	
		topics[$ "They… they make you act like this?"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("They… they make you act like this?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Yes! Can you believe that?! It’s ingrained into me! Blegh!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("That sounds hard, I’m sorry. I don’t mind it all that much, at least.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hah, that makes you the first. I greatly appreciate it. Much as I empathize, this must be INSUFFERABLE.", snd_count),
		
		GOTO("Cont_L2_Dating_2"),
	];
	
		topics[$ "Cont_L2_Dating_2"] = [
		CUSTOMTEXTWAUDIO("I do say, you really know how to pick a place to awe me.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Oh, it’s nothing. I go here when I just need fresh air.", snd_hunter),
		
		// Uh insert long pause, maybe around 10 seconds?
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(I’m… not good at conversations… hell do I say?)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Thank you… I needed this, is my point. The company, too.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Any time. It’s usually a pretty private place for me. But it seemed like we– you… could use it.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Really, now? How so?", snd_count),
		
		SPEAKERAUDIO("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CHOICE("Uh…", 
			OPTION("I want you all to myself" , "of course."),
			OPTION("You seemed down in the dumps, dude.", "You seemed down in the dumps, dude."),
			OPTION("I have no clue," , "I just hoped you’d like it."))
		
		];
		
		topics[$ "of course."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I want you all to myself, of course.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
		CUSTOMTEXTWAUDIO("Ah. Is that all?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Uh… totally. Yeah.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hm.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Gah… did he want me to be more sincere or something…?", snd_hunter),
		
		GOTO("Cont_L2_Dating_3"),
		
		];
		
		topics[$ "of course."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("You seemed down in the dumps, dude." , snd_hunter),
		
		CUSTOMTEXTWAUDIO("Haha! Seems I couldn’t fool you, then.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Well, you did mention family troubles. I can empathize.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("This is how you usually overcome them, then?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Helps me think. Monster hunters can be a lot, sometimes. Extroverts.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("You’re quite the exception then, aren’t you?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Heh, don’t see any others up here, do you?", snd_hunter),
		
		GOTO("Cont_L2_Dating_3"),
		
		];
		
		topics[$ "I just hoped you’d like it."] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I have no clue, I just hoped you’d like it.", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("We all could use some quiet, now and again. The wind's nice.”", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hah, and you trust me– a vampire – with a place so important to you?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Yeah. I’d think so. And if you were a threat, I would’ve just decapitated you by now.", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Dammit– too honest!)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hahaha! I... that actually means a lot, to say that so unabashedly!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Or… just honest enough.)", snd_hunter),
		
		GOTO("Cont_L2_Dating_3"),
		
		];
		
		topics[$ "Cont_L2_Dating_3"] = [
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("You can really see the whole cityscape if you look in the distance. See those lights?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Just gorgeous. And this wind… so calming. The sunset is only minorly sizzling on my skin.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Mhm. Pretty stark from the busyness down there.", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("For a few more minutes, we enjoyed the rest of the sunset in silence.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Something tells me we should both be getting back to, by now. It’s getting late. We should hike back down.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I mean… if you’d like, we could go together sometime.", snd_hunter),
		
		];
		
		topics[$ "L2_0_Hearts"] = [
		CUSTOMTEXTWAUDIO("Oh… now how should I say this…", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Oh no…)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("First and foremost, thank you really for sharing this part of you. But…", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("But?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("You don’t seem comfortable with me. Or… maybe you are? But you’re acting so withheld that it’s… hard to tell.", snd_count),
		CUSTOMTEXTWAUDIO("I don’t want to keep meeting like this only for neither of us to be direct, or be our whole selves. I’m sorry. I don’t think we should see each other. ", function() {obj_textbox.restartDialogue();}, snd_count),
		
		// [C starts to leave, with H standing there with stunned look]
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(What did I do wrong?)", snd_hunter),
		
		]; 	// GAME OVER SCREEN
		
		topics[$ "L2_1_Hearts"] = [
		CUSTOMTEXTWAUDIO("Oh! Well…", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Hm…?", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Oh no, did I ruin the mood?)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("You see, I do enjoy the whole trip. I felt like something was amiss.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Which is…?", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Oh grubs… was I too much? Not enough?)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Well… it wasn’t anything you said. But it seemed like you had the jitters the whole time! Were you nervous?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I… I was. yeah…", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh my sweet! It’s quite alright, I felt a bit nervous as well but you brought me somewhere beautiful that’s close to your heart and mind.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("So you wouldn’t mind if we meet again?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh, certainly! I’d love to visit the town with you another night. All I could ask is…", snd_count),
		CUSTOMTEXTWAUDIO("...Don't be so nervous, next time.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I… yes! Yeah, I’d love to!", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Oh man, I was too excited…)", snd_hunter),
		
		];
		
		topics[$ "L2_2_Hearts"] = [
		CUSTOMTEXTWAUDIO("Ohohoho! I’d love to! It would be a pleasure to meet with you once again!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Great… so, you enjoyed our trip here? And the view?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Not as much as the opportunity I had to know you more, my dear. Your earnestness– I love it!", snd_count),
		CUSTOMTEXTWAUDIO("I’m free next week, if you’d like to spend some more time in town.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(He… he wants to be with me still? This is… this is great!)", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Yes! I…I mean…yes, that would be so alright! Hundred percent!", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Enthusiasm! I’m glad you’re thoroughly enthused!", snd_count),
		CUSTOMTEXTWAUDIO("Let’s start the trek down, shall we?", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(My heart… it’s beating so fast… oh, grub it all.)", snd_hunter),
		
		];
		
		topics[$ "L2_3_Hearts"] = [
		CUSTOMTEXTWAUDIO("Really?! You’d like that? I mean– yes, absolutely!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Uh– great! I’m… flattered you’re so enthused.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Flattery is in my blood and culture! Sure, it’s often exclusive to monsters… but you’ve more than earned it!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I feel the same, I think you’re great. I don’t regret bringing you up to my secret spot.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("I’m quite a lucky monster to be given such honor.", snd_count),
		CUSTOMTEXTWAUDIO("You know how to make a monster’s undead heart beat to no end!", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Hah... we should probably start going down, though.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Of course! Right! But uh… let’s not rush too much.", snd_count),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("(Wow… he likes me! He really likes me! Oh Scarab, I don’t know if I can handle this.)", snd_hunter),
		
		SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("Yeah. Alright.", snd_hunter),
		
		];
} #endregion