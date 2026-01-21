draw_sprite(spr_testMonster, 0, 212, 437);

var barWidth;
barWidth = 200;

var monsterHealthColor = c_green;
if (monsterHealth <= 100) {
	monsterHealthColor = c_orange;
	barWidth = 100;
}

if (monsterHealth <= 50) {
	monsterHealthColor = c_red;
	barWidth = 50;

}
draw_set_color(monsterHealthColor);
draw_rectangle(100, 111.9774, 100 + (monsterHealth/monsterHealth)*barWidth, 111.9774 + 10, false)