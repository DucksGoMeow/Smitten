function scr_test(){

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

 topics[$ "Tutorial"] = [
  SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
  TEXT("Strange! Allies of my coven, approaching rapidly in our general direction!"),
  
  SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
  TEXT("Yeah… they don’t look too happy."),
  
  SPEAKER("Count", spr_name, PORTRAIT_SIDE.LEFT),
  TEXT("Really? Mayhaps they’re just excited to see me."),
  
  SPEAKER("Hunter", spr_dialoguePortraitHunter, PORTRAIT_SIDE.LEFT),
  TEXT("(These monsters are probably after Count...I need to protect him!)"),
  CHOICE("(Do I still remember how to hunt monsters...?)",
		OPTION("Yes.", "(Of course I do. Can’t lose my composure yet…)"), // insert skip to Level 1
		OPTION("No.", "(Hm… I’m rusty. I could use a warm-up)")) // insert tutorial, will add the tutorial dialogue soon
];

}