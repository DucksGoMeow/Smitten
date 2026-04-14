function scr_topics_level4Dialogue(topics){
	
	#region Level 4 Intro
	topics[$ "L4_Intro"] = [
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh, there you are.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Aha! I managed to sneak up on you this time!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Good job.", snd_hunter),
	TEXTWAUDIO("(I could clock him from a block away.)", snd_hunter),
	TEXTWAUDIO("Do you mind the lights? They're meant to disorient monsters.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I believe at this point... a little discomfort's worth the time with you.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Damn, smooth.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Hehe!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Never gonna stop teasing me, huh?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Precisely!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Anyway, we should get going. Come with me. And stay close.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Always and forever, my sweet! I know just the place!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Something's off tonight...)", snd_hunter),
	CUSTOMTEXTWAUDIO("", function() {room_goto(rm_level4Battle)}, snd_hunter),
	];
	
	#endregion

	#region Level 4 Date
	topics[$ "L4_Date"] = [
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(This place should be relatively safe. It's big, but security's tight. Count should be fine here.)", snd_hunter),
	TEXTWAUDIO("(...If my employer really was Count's mother, the Countess...)", snd_hunter),
	TEXTWAUDIO("(What would she possibly gain from killing her own son?)", snd_hunter),
	TEXTWAUDIO("(Wouldn't abandoning him be easier to cover-up?)", snd_hunter),
	TEXTWAUDIO("(Couldn't be trying to usurp I'd imagine she's already the leader of monsters, given her influence... So why...)", snd_hunter),
	TEXTWAUDIO("(...Crap, does Count even know? Do I even tell him? I didn't even know I'd be wrapped up in her scheme...)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("...Hunter? Hellooo, Earth to Hunter?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Woah, relax, dear. It's just me.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Sorry, sorry. Were you saying something?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Oh, nothing much. I was just talking about how delectable their coconut shake is! Would you like some?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh, um... I'm good, thanks. Not really hungry right now.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I see.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CHOICE("Is something troubling you? Your gaze has been vacant ever since we stepped foot in town.",
		OPTION("I'm fine", "I'm fine."),
		OPTION("I'm doing badly", "I'm doing pretty badly."),
		OPTION("I could be better", "I could be doing better.")),
		
	];
	
		topics[$ "I'm fine."] = [
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		CUSTOMTEXTWAUDIO("I'm fine.",function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
			
		CUSTOMTEXTWAUDIO("Uh-huh, sure. And the fact that your stomach has been growling for the past few minutes despite your denial of any hunger is proof of that, I assume?", function() {obj_textbox.restartDialogue();}, snd_count),
			
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Jeez, was it that loud?", snd_hunter),
			
		CUSTOMTEXTWAUDIO("Hunter, dearie, We've been together long enough for me to notice whenever you're acting strange.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(So I'm doing that badly at hiding things, huh...)", snd_hunter),
			
		CUSTOMTEXTWAUDIO("Haha! Your face is redder than the blood of my victims!", function() {obj_textbox.restartDialogue();}, snd_count),
		TEXTWAUDIO("But seriously, you almost look as pale as me right now.", snd_count),
		TEXTWAUDIO("Maybe a drink will cheer you up for a bit?", snd_count),
			
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Sure.", snd_hunter),
		TEXTWAUDIO("(He looks convinced, but my gut's telling me otherwise...)", snd_hunter),
	
		GOTO("Cont_L4_Date"),
		];
		
		topics[$ "I'm doing pretty badly."] = [
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I'm doing pretty badly.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh my, why didn't you tell me earlier?", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...", snd_hunter),
		TEXTWAUDIO("I didn't want to worry you.", snd_hunter),
		TEXTWAUDIO("You've already got so much crap to deal with as is, I didn't want to add onto it.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Hunter...", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I'm sorry.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Nothing to be sorry about! You can just tell me, if", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("No, not right now. I will promise. Just don't wanna ruin this.", snd_hunter),
		TEXTWAUDIO("(I'm so cooked.)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("If you say so...", function() {obj_textbox.restartDialogue();}, snd_count),
		
		GOTO("Cont_L4_Date"),
		];
		
		topics[$ "I could be doing better."] = [
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("I could be doing better.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh? What's ailing you then?", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("It's no big deal. Just some bounty stuff.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Really? Y'know you can tell me anything you wish, right?", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Yeah.", snd_hunter),
		TEXTWAUDIO("(He hates having to talk family. But something's really worrying me...)", snd_hunter), 
		TEXTWAUDIO("..I'll tell you later, it's a real nothingburger honestly.", snd_hunter),
		TEXTWAUDIO("(I'm technically not lying...)", snd_hunter),
		
		CUSTOMTEXTWAUDIO("You promise?", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Of course.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Alright.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(He looks convinced, but my gut's telling me otherwise...)", snd_hunter),
		TEXTWAUDIO("(I will tell him everything. After this.)", snd_hunter),
		
		GOTO("Cont_L4_Date"),
		];
		
		topics[$ "Cont_L4_Date"] = [
		CUSTOMTEXTWAUDIO("You know, the food here is decadent!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Which one is your favorite?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh, how much I love their coconut shake!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Coconut milk...? I thought you needed blood to survive...?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Oh that, my family has strictly put me in such dietary restrictions!", function() {obj_textbox.restartDialogue();}, snd_count),
		TEXTWAUDIO("It was one of their efforts to make me crave blood more.", snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Did that even work?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Haha! Nope! It made me love coconut even more!", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("But if your kind needs blood... isn't it unpleasant?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Aw, thank you for your concern, my sweet cheese wheel!", function() {obj_textbox.restartDialogue();}, snd_count),
		TEXTWAUDIO("Yes, my urges run deep... but it's only made me more determined to keep them in check. Much as they eat at me.", snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("...Have you ever been tempted to take blood from me?", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Not even for a moment.", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hm... oh look, our food's here.", snd_hunter),
		
		CUSTOMTEXTWAUDIO("Say aaah...", function() {obj_textbox.restartDialogue();}, snd_count),
		
		SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("(HUH!?)", snd_hunter),
		CHOICE("(He's... he's so close! What do I do!?)",
			OPTION("(Go along)", "(Go along with it.)"),
			OPTION("(Go extra)", "(Go along with it, a lot.)"),
			OPTION("(Refuse.)", "(Refuse.)")),
		
		];
	
	topics[$ "(Go along with it.)"] = [
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Ahhh.", snd_hunter),
	TEXTWAUDIO("[Chomps softly]", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Ohhhh, quite eager, aren't you?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You are right... this... this is good.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("What can I say? I have the best taste in food...", function() {obj_textbox.restartDialogue();}, snd_count),
	TEXTWAUDIO("And men.", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("!!!", snd_hunter),
	TEXTWAUDIO("(This man will be the death of me.)", snd_hunter),
	TEXTWAUDIO("You really do, no wonder you got me wrapped around your finger.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Ohoho! Now the tables have turned!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	GOTO("Cont_L4_Date_2"),
	];
	
	topics[$ "(Go along with it, a lot.)"] = [
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Wait.)", snd_hunter),
	TEXTWAUDIO("(Aren't we like, basically a thing now?)", snd_hunter),
	TEXTWAUDIO("(So why am I still acting like this? I don't really have a reason to anymore...)", snd_hunter),
	TEXTWAUDIO("(...And besides, I've been wondering about something for quite some time now...)", snd_hunter),
	TEXTWAUDIO("(Maybe I should poke the hornet's nest back for once, too. Just to see what it's like.)", snd_hunter),
	TEXTWAUDIO("[CHOMP]", snd_hunter),
	
	CUSTOMTEXTWAUDIO("!!!", function() {obj_textbox.restartDialogue();}, snd_count),
	TEXTWAUDIO("My, you're starving today, aren't you?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I'd have you for dessert, if I could.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("There's my guy!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	GOTO("Cont_L4_Date_2"),
	];
	
	topics[$ "(Refuse.)"] = [
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("...",function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
		
	CUSTOMTEXTWAUDIO("???", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Hunter, darling...are you alright?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yes, I'm fine.", snd_hunter),
	TEXTWAUDIO("(No I'm not, how am I supposed to tell him about his mom and her scheme?)", snd_hunter),
	TEXTWAUDIO("(Scarab above should I worry? I don't...)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("You're still tense...", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(He's reading me all too well. How can I tell him? Why am I overthinking? I don't want to ruin this...)", snd_hunter),
	
	GOTO("Cont_L4_Date_2"),
	];
	
	topics[$ "Cont_L4_Date_2"] = [
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("So, now that we finished our meals... should we ring the bill?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Why the rush? We were just been here for around twenty minutes.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I feel like... something's wrong here. So close to the woods, too...", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Is that why you've been feeling iffy? Why didn't you tell me? I would've brought us to a different restaurant! My top priority is to make sure you're comfortable", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("It would be a hassle, you took all the time to bring me here, I don't want to be rude and asked if we could relocate.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Yes, I know that type of etiquette. But it's also important that you tell me what's going on. You've been beating around the bush!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Look, honey. I", snd_hunter),
	
	// Insert Footsteps SFX
	
	CUSTOMTEXTWAUDIO("My my, is this what you have been doing all this time?", function() {obj_textbox.restartDialogue();}, snd_mommy), // mommy's sound??
	CUSTOMTEXTWAUDIO("", function() {room_goto(rm_level4Interuption)}),
	];
	
	topics[$ "L4_Interuption"] = [
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("!!!", snd_count),
	TEXTWAUDIO("(That voice... Why is SHE here?)", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Awww, what's with the silence? Does my presence exude such grace?.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You have about as much grace as you do a pulse, Mother.", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(My employer... I'd recognize someone this tall anywhere.)", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), // don't mind, this is when she finally has a portrait dialogue
	TEXTWAUDIO("Is that a way to greet me, my little insect?", snd_mommy),
	TEXTWAUDIO("Tell me, bug... why haven't you taken him out?", snd_mommy),
	CHOICE("(Wait! Is she talking to me...?)",
			OPTION("None of your business.", "It's none of your business."),
			OPTION("I did.", "I did."),
			OPTION("...", "...")),
	
	];
	
	topics[$ "It's none of your business."] = [
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("It's none of your business.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Tch, it IS my business. You imbecile! I expected results. But that's already asking too much from a lowly bug.", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I don't take orders from you. You never even paid me.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("You bugs really prefer emotions over logic. And I thought hiring you would be better.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Wait... hire? Mother, what do you mean?", snd_count),
	
	GOTO("Cont_L4_Date_3"),
	];
	
	topics[$ "I did."] = [
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I did.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("You incredulous little whelp cut the semantics, you know well what I meant.", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Still took him out.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Are all you bugs this daft?", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yep, seems like it.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Greatest monster hunter, an even greater fool... unfortunate you're who my son has grown a liking to.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Mother, what's with the tantrum? You are embarrassing us. In front of all these people, too?", snd_count),
	
	SPEAKER("Mommy", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("'People,' he says...", snd_mommy),
	
	GOTO("Cont_L4_Date_3"),
	];
	
	topics[$ "..."] = [
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Speechless? Cat got your tongue, insect?", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I figured I wouldn't see you until I was done...", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("And look what came of that... a hunter who hasn't touched his prey. Not in any way that was intended.", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I was taking my time. You can't rush hunting.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("...Let's drop the pretense for a moment. You never intended on doing it, did you?", snd_mommy),
	TEXTWAUDIO("Are you truly so braindead you interpreted 'take out' this way...? Or was this more bug moronics? It's truly hard to tell.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Take out? Prey?", snd_count),
	TEXTWAUDIO("Would someone mind telling me what's going on?", snd_count),
	
	GOTO("Cont_L4_Date_3"),
	];
	
	topics[$ "Cont_L4_Date_3"] = [
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("My dear little boy being left in the dark... How sad.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("That's literally ALL you do! You're just not even a communicative person, mother!", snd_count),
	TEXTWAUDIO("...Hunter... How do you know my mother?", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Ah, yes, Count! Your little mongrel of a lover...", snd_mommy),
	TEXTWAUDIO("I ordered a bounty on your head, and sent the hunter to deal with you.", snd_mommy),
	TEXTWAUDIO("Even if he hadn't killed you, it'd be a proper scare tactic, so you know to stay away from these little pests...", snd_mommy),
	TEXTWAUDIO("Instead, I've had to witness this chicanery... you and your lovestruck nonsense.", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("A... scare tactic? What...?", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("You've been so engrossed in these animals... in this animal... no matter how often we try to show you the light.", snd_mommy),
	TEXTWAUDIO("Even now, this insect lets us down. Can't even do his job, can't even tell you what's on his mind. Pathetic, really.", snd_mommy),
	TEXTWAUDIO("Even after direct orders...", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Count...", function() {instance_create_layer(0, 0, "Instances", obj_level4HeartEvent)}, snd_hunter),
	
	]; 
	
	topics[$ "L4_0_1_Hearts"] = [
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("When will you stop interfering in my life, mother?!", snd_count),
	TEXTWAUDIO("Every single time I have something good something right you always have SOMETHING to do with this!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Scarab above... Count we need to get out of here.", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Oh yes, by all means, listen to the bug, son. Run away.", snd_mommy),
	TEXTWAUDIO("I own these woods... these insects, the monsters they all whisper my name because they know it is pointless to defy me.", snd_mommy),
	TEXTWAUDIO("Any which way you run, anything you indulge yourself in... I will be there. Any choice you make will be crawling back to me.", snd_mommy),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Count, don't listen to her.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("YOU...! Why do you have to ruin everything?!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Neutral, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(What's he gonna do to Wait... she's got a sword...!)", snd_hunter),
	TEXTWAUDIO("COUNT WAIT!", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("HAAAAAA—", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I can't let him!", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("...!", snd_mommy),
	
	CUSTOMTEXTWAUDIO("[SWISH!]", function() {obj_textbox.restartDialogue();}), // insert swish sfx
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("URGH!", function() {obj_interuptionCG.interuptionSprite = spr_dinnerCG2}, snd_hunter),
	TEXTWAUDIO("(I... I jumped in front of...)", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("HUNTER!!", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...Damn it... force of habit...", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("Not even fast enough to parry...? You really are a fraud...", snd_mommy),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter! Hunter PLEASE get up! You're tougher than this!", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	CUSTOMTEXTWAUDIO("Come back home when you're done mourning the insect, son...", function() {obj_level4HeartEvent.doneDate = true}, snd_mommy),
	
	]; // GAME OVER
	
	topics[$ "L4_2_Hearts"] = [
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hah... this has to be my mother's saddest attempt to goad me yet, eh, Hunter?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh...? I... I figured you'd be mad at me, or something...", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter... whether you know it or not, you chose not to hunt me down.", snd_count),
	TEXTWAUDIO("And whether that be because of the spark we had, or my handsome beautiful face... it doesn't matter.", snd_count),
	TEXTWAUDIO("You took me out. And continued to. And even now all you worry about is my wellbeing...",  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Of course. I... I really like you, Count. A lot-a lot.", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("And I you, dear Hunter... I figured you know me well enough to know you need not hide ANYTHING from me!", snd_count),
	TEXTWAUDIO("Mother this is not quite the slam dunk you were expecting... because I like Hunter! A lot-a lot!", snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("...No matter WHAT I do, you simply cannot help yourself around these ANIMALS...", snd_mommy),
	TEXTWAUDIO("ENOUGH! My sweet minions, gut this insect!", snd_mommy),
	
	// The minions overpowered Count and started dragging him away.
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Unhand me! Agh seriously, Uncle Lupus?! No need to manhandle me, you-", function() {obj_interuptionCG.interuptionSprite = spr_dinnerCG2},  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Count! You!", snd_hunter),
	TEXTWAUDIO("(...They took him back to the woods... crap.)", snd_hunter),
	TEXTWAUDIO("(That's ground zero monster territory.)", snd_hunter),
	CUSTOMTEXTWAUDIO("(...But there's no time to waste... I'm coming, Count!)", function() {obj_level4HeartEvent.doneDate = true}, snd_hunter),
	
	]; // TRANSITION TO LEVEL 5
	
	topics[$ "L4_3_Hearts"] = [
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hah... this has to be my mother's saddest attempt to goad me yet, eh, Hunter?", snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh...? I... I figured you'd be mad at me, or something...", snd_hunter),

	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hunter... whether you know it or not, you chose not to hunt me down.", snd_count),
	TEXTWAUDIO("Beyond that... you put aside your hunter's instincts JUST to spend time with me... and the time after that...",  snd_count),
	TEXTWAUDIO("...You never stopped caring!",  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You made it easier... easier to be me.”", snd_hunter),
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("And you, me...", snd_count),
	TEXTWAUDIO("I take it back, mother... for the first time in my life since I was born you've actually given me something.",  snd_count),
	TEXTWAUDIO("By putting a bounty on my head you've simply introduced me to the LOVE OF MY LIFE!",  snd_count),
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Holy Scarab... he really means that?!)", snd_hunter),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("You stupid LITTLE MINIONS! Get in here and take this brat away!", snd_mommy),
	
	//[In a swift motion, her minions tackled him as a surprise attack}
	
	SPEAKER("Count", spr_dPCount_Unsure, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Ugh! Get your hands off me! Ouch hey hey, no need to", function() {obj_interuptionCG.interuptionSprite = spr_dinnerCG2}, snd_count),
	
	SPEAKER("Mommy", spr_dPMommy_Neutral, PORTRAIT_SIDE.LEFT), 
	TEXTWAUDIO("You animals have brainwashed my sweet boy so badly... he needs to remember that it's FAMILY first... farewell, pest.!"),
	
	// [They drag Count away with Hunter rushing to follow them.]
	
	SPEAKER("Hunter", spr_dPHunter_Unsure, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Count! Count!", snd_hunter),
	TEXTWAUDIO("(Crap... What am I supposed to do... they took him into the woods, where would)", snd_hunter),
	TEXTWAUDIO("...", snd_hunter),
	TEXTWAUDIO("...No.", snd_hunter),
	TEXTWAUDIO("Not anymore. No room to overthink this time.", snd_hunter),
	CUSTOMTEXTWAUDIO("I love that guy. Nothing else to it. I don't care where they bring him I'm getting him back!", function() {obj_level4HeartEvent.doneDate = true}, snd_hunter),
	]; // TRANSITION TO LEVEL 5
}