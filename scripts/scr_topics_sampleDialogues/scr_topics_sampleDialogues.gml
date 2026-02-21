function scr_topics_sampleDialogues(topics){
 /*//Dialogue w/o a character portrait
	topics[$ "Example"] = [
		TEXT("Hello World"),
	];

	//Dialogue w a character portrait
	topics[$ "Example 2"] = [
		SPEAKER("Name", spr_name, PORTRAIT_SIDE.LEFT, tst),
		TEXT("Hello World!"),
	];

	//Dialogue w text effect
		topics[$ "Effect"]
		TEXT("Hello <effect>World!</effect>"),
	];

	//Dialogue w a choice
		topics[$ "Effects"] = [
		CHOICE("Make a <wavy>choicee</wavy>",
			OPTION("Choice one", "One"),
			OPTION("Choice two", "Two"))
	];

	topics[$ "One"] = [
		TEXT("You picked option one"),
	];

	topics[$ "Two"] = [
		TEXT("You picked option two"),
	];

	//Dialogue w a player input
		topics[$ "Name"] = [
		TEXT("Nice to meet you " + string(objName.whateverVar)),
	];

	//Dialogue w custom action
		topics[$ "Extra"] = [
		CUSTOMTEXT("Hey I'm gonna hate you now", function() {objName.whateverVar = true}),
		TEXT("You need text after because it won't work w/o it"),
     
	 //You can use this to give or remove hearts depending on choices made :33
	];*/

	topics[$ "Testing Audio"] = [
		SPEAKER("Name", spr_name, PORTRAIT_SIDE.LEFT),
		TEXTWAUDIO("Hello World! I am testing the audio to see if it works!", snd_hunter),
		TEXTWAUDIO("The audio should play for long texts, like this one right here which actually needs me to type a lot", snd_hunter),
		TEXTWAUDIO("And short texts", snd_hunter),
	];
}