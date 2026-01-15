if (flipped == true)
{
	switch(type)
	{
		case "john":
		sprite = spr_john;
		break;
		
		case "dave":
		sprite = spr_dave;
		break;
		
		case "rose":
		sprite = spr_rose;
		break;
	}
}
else
{
	sprite = spr_card1;
}

draw_sprite(sprite, 0, x, y);