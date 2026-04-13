//Count Sprite

if (room == rm_tutorial || room == rm_level5Battle){
	draw_sprite(countSprite, image_index, 683, 277);
}
else{
	draw_sprite(countSprite, image_index, 573, 277);
}



/*//Timer Text (this is temporary)
var t = "";
t += string(tMin);
t += ":";

if (tSec > 9){
	t += ""+string(tSec);
}

if (tSec < 10){
	t +="0"+string(tSec);
}

t += ".";
t += string(tMil)

draw_text(0, 45, t);
	
	