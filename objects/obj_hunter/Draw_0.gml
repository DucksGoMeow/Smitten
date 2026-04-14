//Monster Sprite
if (room != rm_mainMenu && room != rm_level1Date && room != rm_level2Date && room != rm_level3Date && room != rm_level4Date && room != rm_level4Interuption && room != rm_final){
	draw_sprite(hunterSprite, image_index, 484, 320);
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

draw_text(0, 30, t);
	
	