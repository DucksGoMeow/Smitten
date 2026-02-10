/// CUSTOMIZABLE PROPERTIES

global.player_name = "No Name Yet"; //Only use if the player can change the main characters name

//Input
confirm_key = vk_enter; //Key to press to go to the next page/select options
up_key = vk_up; //Key to scroll up when options are presented
down_key = vk_down; //Key to scroll down when options are presented
max_input_delay = 5; //How many frames to ignore input (helps prevent order issues as textbox spawns)
input_delay = max_input_delay;

//Position
margin = 60 ; //How much space the textbox gets from the edges of the screen
padding = 10; //How much space things inside the textbox get
width = 1212;
height = 255;
x = 76.8;
y = 486.6;

//Text
text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;
text_x = padding;
text_y = padding * 3;
text_width = width - padding * 2;

//Option
option_color = c_white;
option_x = padding;
option_y = padding * - 6;
option_spacing = 50;
option_selection_indent = 24;
option_width = 300;
option_height = 40;
option_text_x = 10;

//Speaker
speaker_font = fnt_text;
speaker_color = c_white;
speaker_x = padding; //Where relative to the textbox do nameplates spawn?
speaker_y = 0;

//Portrait
portrait_sprite = -1;
portrait_side = PORTRAIT_SIDE.LEFT;
portrait_x = padding; //How far to the side do portraits shift?
portrait_y = padding;

///PRIVATE PROPERTIES
/*** LOOK BUT DO NOT EDIT! ***/
actions = [];
current_action = -1;

//An optional function to run when the textbox closes
onClose = undefined;

text = "";
text_progress = 0;
text_length = 0;

options = [];
current_option = 0;
option_count = 0;

speaker_name = "";
speaker_width = sprite_get_width(spr_portrait);
speaker_height = sprite_get_height(spr_name);
	
portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);

//Note that this uses the width of spr_portrait, not spr_nameplate
speaker_width = sprite_get_width(spr_portrait);
speaker_height = sprite_get_height(spr_name);

enum PORTRAIT_SIDE {
	LEFT,
	SAME,
	RIGHT
}

portrait_width = sprite_get_width(spr_portrait);
portrait_height = sprite_get_height(spr_portrait);

//Methods
//*** Generally you never need to call these manually ***/

//Start a specified topic of conversation
//Called when the textbox is created and when branching dialogue
setTopic = function(topic) {
	// Does the topic actually exist?
	if (!variable_struct_exists(global.topics, topic)) {
		show_message("Topic named " + topic + " does not exist!");
		instance_destroy();
	}
	else {
		actions = global.topics[$ topic];
		current_action = -1;
		
		next();
	}
}

//Move to the next action, or close the textbox if out of actions
next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else if (actions[current_action].act(id)) {
		next();
	}
}

//Set the text that should be typed out
setText = function(newText) {
	text = __parse(newText);
	
	text_length = 0;
	for (var i = 0; i < array_length(text); i++)
		text_length += string_length(text[i].text);
	text_progress = 0;
}

//Present a list of options
setOptions = function(newOptions) {
	options = newOptions;
	option_count = array_length(options);
	current_option = 0;
}