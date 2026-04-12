function scr_topics_level3Dialogue(topics){

#region Level 3 Intro

topics[$ "L3_Intro"] = [

	CUSTOMTEXTWAUDIO("My dearest Hunter, fashionably late, I see. Welcome to the amusement park!", function() {obj_textbox.restartDialogue();}, snd_count),
		
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hey, Count. Guess you really can blend into bug territory.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Nobody suspects monsters to be so brazenly in public! And I’m bug-adjacent enough.", function() {obj_textbox.restartDialogue();}, snd_count),
		
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Seems like that didn’t stop your family. Here they come.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Oh, it’ll be fine. You're here. Let’s enjoy ourselves!", function() {obj_textbox.restartDialogue();}, snd_count),
		
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Seems like the ferris wheel’s a good vantage point to–)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Race you to that big tower that drops people!", function() {obj_textbox.restartDialogue();}, snd_count),
		
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...Actually, we’ll just make our way there.)", snd_hunter),
	
	// transition to Battle!
	
];

#endregion

#region Level 3 Date

topics[$ "L3_Date"] = [
	CUSTOMTEXTWAUDIO("Hahaha! This place has been a blast! So many ways to get launched at extreme velocities, and-or, lose money!", function() {obj_textbox.restartDialogue();}, snd_count),
		
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Didn’t know we had one in town, but yeah. This was fun.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("What was your favorite amusement park thing?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Third favorite… this ferris wheel. The view is… magnificent, wow!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Then the drop tower would be second only to the roller coaster. After all– I could hold your hand all the way down on the latter.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Heh, smooth.” (Calm down, calm down, calm down.)", snd_hunter),
	
	CHOICE("...Sorry for squeezing so hard and screaming in terror", "by the way.",
		OPTION("I’d like to feel that grip elsewhere.", "I’d like to feel that grip elsewhere."),
		OPTION("Me too, that was terrifying.", "Me too, that was terrifying."),
		OPTION("You screamed like a little girl.", "You screamed like a little girl.")),

	];
	
	topics[$ "I’d like to feel that grip elsewhere." ] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I’d like to feel that grip elsewhere.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Wow.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("You’ve really grown bold, haven’t you?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Was I being too straight forward…?)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("What can I say? You bring out something inside me.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Oh you! Quit it!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(I'M BEING TOO CRINGE? Maybe?)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("It’s quite cute seeing you finally getting out of your shell.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(G uh.)", snd_hunter),
	
	GOTO("Cont_L3_Date"),
	];
	
	
	topics[$ "Me too, that was terrifying." ] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Me too, that was terrifying.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I know! It scared the living daylights out of me! …Though that’d be kinda backwards for me, huh?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...What? What’s that even mean?)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh, vampire joke.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("An attempt at one, though it seems like it didn’t land!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Nah, I was just reading too much into it… part of me’s still nervous.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Haha… I think we’ve known each other long enough for you to keep your guard down with me.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("As much as you can, at least! I know I trust you by now.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hey… true that.", snd_hunter),
	
	GOTO("Cont_L3_Date"),
	];
	
	topics[$ "You screamed like a little girl." ] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("You screamed like a little girl.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
	
	CUSTOMTEXTWAUDIO("Oh… I apologize.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Oh no, Scarab above…! I didn’t mean to say it like that.)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("No! No, don't apologize, I should apologize. You were scared and I didn’t mean to make it sound like that.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Ah, how sweet of you.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(I am NOT getting this in the bag.)", snd_hunter),

	
	GOTO("Cont_L3_Date"),
	];
	
	topics[$ "Cont_L3_Date"] = [
	CUSTOMTEXTWAUDIO("If you don’t mind me asking– you don’t get out too much, right, Hunter?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I do. Just… never outside of work. Bounties take me all over the place, tough.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("A surprise, considering you seem to get more attention than I have out here.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh…? What do you mean?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Haven’t you noticed? You often have bugs shooting you gazes, cheers, the occasional sigh of relief.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("You seem to have respect from bugs of all kinds– and for such a loner, you get a lot of thanks.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("Your presence even got me another try at that balloon-dart game!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...Or maybe it was because you kept dropping to your knees and monologuing after every miss...)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I was smacking and slashing the tar out of dangerous monsters. Staring is expected.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("And during said brawls, bugs around seemed concerningly less bothered by their presence.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("They just continued on with the festivities. As if… by your presence alone, they felt safe.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("That’s… my job. I don’t think I’m anything special.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Yet in the stories my family would tell– no monster hunter ever brought such ease among bugkind as you have.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CHOICE("...Am I wrong?",
		OPTION("Bugs respect any member of the monster hunters.", "Bugs respect any member of the monster hunters."),
		OPTION("Do they? I’m just doing my job, I wouldn’t know.", "Do they? I’m just doing my job, I wouldn’t know."),
		OPTION("Huh… I never thought about it like that.", "Huh… I never thought about it like that.")),
	
	];
	
	topics[$ "Bugs respect any member of the monster hunters."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Bugs respect any member of the monster hunters.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I earned my mandibles, my rank, just like anybody else. I keep away the monsters who treat us like prey.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("There are other hunters here. I doubt it’s just me. We all do good work.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("[Laugh]", function() {obj_textbox.restartDialogue();}, snd_count), // insert laughing sfx here maybe??
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Hm?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Sorry, you’re just so earnest. No monster hunter is like you.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Ah…", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("He’s such a flatterer.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Not flattery. Just the truth, my wonderful protector.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(I gotta stop saying this stuff out loud… getting way too comfortable.)", snd_hunter),
	
	GOTO("Cont_L3_Date_2")
	];
	
	topics[$ "Do they? I’m just doing my job, I wouldn’t know."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Do they? I’m just doing my job, I wouldn’t know.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
	
	CUSTOMTEXTWAUDIO("Never seen their reactions, I take it?", function() {obj_textbox.restartDialogue();}, snd_count), 
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I’m focused on the bounties. I don’t really pay attention to how people feel.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Always assumed they didn’t like my vibe.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I see, well… perhaps you ought to take a look at what they think.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("Perhaps you’d reconsider what you think they think of you.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(He sounds… dejected? Did I say something wrong?)", snd_hunter),
	
	GOTO("Cont_L3_Date_2"),
	];
	
	topics[$ "Huh… I never thought about it like that."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh… I never thought about it like that.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I don’t know them very well, but I do a good enough job that they… they do seem calmer.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Always assumed I was too closed off for them to care. But I think you got a point.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I see that, the way they feel relaxed when seeing you. It’s… heartwarming.", function() {obj_textbox.restartDialogue();}, snd_count), 
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I never thought that they would be happy to see me, if that makes sense.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Oh, my dear, what they feel is what I feel! You make me feel like I’m worth being protected for.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I… you do?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Why of course! No matter what monsters you face, you always seem to cut through with no holds barred.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("It’s a blessing from the Scarab they have you, Hunter.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Oh grubs. He feels safe around me.)", snd_hunter),
	
	GOTO("Cont_L3_Date_2"),
	];
	
	topics[$ "Cont_L3_Date_2"] = [
	CUSTOMTEXTWAUDIO("In any case, I greatly appreciate you still bearing with me, after my coven’s already assaulted us countless times.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Honestly I’m used to it. Just not this often.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("The sentiment stays. Their superiority complex knows no bounds, and being a noble vampire...", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("They wish to make me hate you as much as they do.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("My mother, especially… much as I rebel, she continues to lord over me on what to become.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...Hm, his mother… could she have been…?)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I mean, look– they’re willing to break into a crowded amusement park to get at us.", function() {obj_textbox.restartDialogue();}, snd_count),
	CUSTOMTEXTWAUDIO("Their hate runs deep…", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...All the more of a surprise you’re the way you are.", snd_hunter),
	
	CHOICE("Which is...?",
		OPTION("Honestly a really cool dude.", "Honestly a really cool dude."),
		OPTION("Someone I can leave my guard down with.", "Someone I can leave my guard down with."),
		OPTION("Good, for a vampire.", "Good, for a vampire.")),
		
	];
	
	topics[$ "Honestly a really cool dude."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Honestly a really cool dude.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You made me feel really comfortable right away, haha.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You’re just really open. Earnest. Silly. It’s hard to get me to like someone so quick.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("And I take it, that's quite the challenge!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yeah… I don’t even have a lot of friends among monster hunters.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("All the more reason we’re both anomalies.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yeah. Kinda, haha.", snd_hunter),
	
	GOTO("Cont_L3_Date_3"),
	];
	
	topics[$ "Someone I can leave my guard down with."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Someone I can leave my guard down with.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("You think so, hm…?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...Don’t think I’ve ever wanted to spend time with someone as much as you.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Or be off guard with someone like you.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Or know anyone, like you.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("You’re great. I like you a lot.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("...", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...He’s clutching his chest. Maybe that was a bit much.)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Sorry, wow. Thanks for… spilling your heart out as such.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	GOTO("Cont_L3_Date_3"),
	];
	
	topics[$ "Good, for a vampire."] = [
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Good, for a vampire.", function() {obj_playerHealth.playerHealth -= 50}, snd_hunter),
	
	CUSTOMTEXTWAUDIO("...That’s a little offensive, I’ll be honest.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Ah, right…", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I mean. You’re not wrong, honestly. Many evil monsters– I’m an exception, after all.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("It’s… just a bit disheartening. Ouch.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Yeah, that was insensitive….)", snd_hunter),
	
	GOTO("Cont_L3_Date_3"),
	];
	
	topics[$ "Cont_L3_Date_3"] = [
	CUSTOMTEXTWAUDIO("Ohohoho! Seems like I finally got you out of your workaholic tendencies! Look at you, such a talker!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("For now. I just… feel like I want to drop everything and be with you.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Guess that’s what happens when you finally feel some weight off your shoulders. Woof.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Perhaps that’s just called liking someone a lot.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I… uh…", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Oh sugar-honey-iced tea, I forgot what I was gonna say!)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Yeah… I… I feel the same way! Um… would you wanna go out some other time?", snd_hunter),
	];
	
	topics[$ "L3_0_Hearts"] = [
	CUSTOMTEXTWAUDIO("…Actually, I think I’d like to spend some time alone for a while.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Huh? But what about your family?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("They can do whatever they want.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("…Just like they always have.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("What? But they might hurt you! Who’s gonna protect y—", snd_hunter),
	
	CUSTOMTEXTWAUDIO("I… I figured it’d be you, yes. But…", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("...Part of me feels like it’s naive to think this can work out.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Did I do something wrong?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("No, but… perhaps there’s too much between us to keep playing this game.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("As… as much as I’d want to. I just don’t know if I can keep doing this.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Not if it keeps putting your neck on the chopping block… only for you to still be unsure about us, too.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("...", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(...Crap.)", snd_hunter),
	
	]; // GAME OVER SCREEN
	
	topics[$ "L3_1_2_Hearts"] = [
	CUSTOMTEXTWAUDIO("Hmm, good question! I didn’t really think that far ahead.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Do you have any suggestions?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Well, we might’ve brought too much attention to ourselves at the park, so it’d probably be smart to go to more secluded areas for our next date.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Come on, you said you’d protect me wherever we went! I don’t see why it’s necessary.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I have, and of course I can. But my gut’s telling me that we have to.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I won’t let them hurt you.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Hah…", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Alright, alright. You win, you overprotective cheese slice.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("I’ll see you next time, alright? I’ve had a great time.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Huh, it looks like he had fun, but something about him feels… off.)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Count has to be mad at me. Scarab above, burn me if I did something wrong…)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(I HAVE to lock in next time. For him!)", snd_hunter),
	
	]; // LEVEL CLEAR!
	
	
	topics[$ "L3_3_Hearts"] = [
	CUSTOMTEXTWAUDIO("Hmm, good question! I didn’t really think that far ahead– I’ve had too much of a good time.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Do you have any suggestions?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	CUSTOMTEXTWAUDIO("Well, we might’ve brought too much attention to ourselves at the park, so it’d probably be smart to go to more secluded areas for now. Somewhere in town.", function() {obj_textbox.restartDialogue();}, snd_hunter),
	
	CUSTOMTEXTWAUDIO("What!? But come on, you’re practically unbeatable! Why the worry, all of a sudden?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I have, and of course I can. But my gut’s telling me that we have to.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("And… I… um…", snd_hunter),
	
	CUSTOMTEXTWAUDIO("You, um…?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I can’t risk you getting hurt. Me being “unbeatable” aside.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("…? Haven’t you done a good job, though?", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Well— Yes, but it’s different now.", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I’ve always disliked the thought of you getting hurt, of course, but now that I know more about you and your family, I…", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I can’t let your wretched mother get a hold of you. Neither you, nor the bugs caught in the crossfire.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("…", function() {obj_textbox.restartDialogue();}, snd_count), //shocked gay.jpeg
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Oh, I called her wretched out loud. I mean, I know I’m right. No dip. But will he get mad…?)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Ahahaha! I always had a feeling you were daring, but to call the oh-so powerful Countess a wretch!? HAH! You might have more screws loose than I thought!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Haha. Ha ha ha ha ha. Ha? Wha? Wha?)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(You’re insane, Hunter. He called you insane. You screwed up big time. He’ll never want to see you again after this. Why did you–)", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Goodness, that gave me a good laugh. That was incredible to witness, my dear.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh. Uh, thank you…?", snd_hunter),
	
	CUSTOMTEXTWAUDIO("Nonono, I should be thanking YOU, Hunter! I genuinely don’t remember feeling this… free before, y’know? Not even once…", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("I get to be myself around you. And you, open up. And it’s the most wonderful feeling in the world.", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Ah...)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("I feel the same way. You always manage to make me feel at ease, even when I’m on duty. And… I like seeing you happy.", snd_hunter),
	
	CUSTOMTEXTWAUDIO("O-Oh…!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("Um…", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("W-Well! Well, well, well! Look who’s being all lovey-dovey all of a sudden!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	CUSTOMTEXTWAUDIO("I should be going… safe travels, my sweet cheese slice!", function() {obj_textbox.restartDialogue();}, snd_count),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("Oh, um… got it...", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(Is it just me, or do Count’s cheeks look redder all of a sudden…?)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(N-No, that can’t be possible. He’s a vampire, stupid! Vampires don’t have blood to rush into anything!)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(He… does seem much happier, though. That, I’m sure of.)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("(It’d be nice to see more of that smile, more often.)", snd_hunter),
	
	SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
	TEXTWAUDIO("…Hehe.", snd_hunter),
	
	]; // LEVEL CLEARED
	
	
}#endregion