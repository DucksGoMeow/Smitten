//Timer Text (this is temporary)
draw_set_colour(c_white);

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

draw_text(0, 35, t);