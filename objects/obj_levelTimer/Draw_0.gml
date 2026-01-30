//Timer Text (this is temporary)
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

draw_text(0, 0, t);

if (pausegame){
	draw_text(15, 15, "GAME PAUSED");
}