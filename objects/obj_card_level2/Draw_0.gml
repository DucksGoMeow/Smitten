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
	}
}
else
{
	sprite = spr_card2;
}

draw_sprite(sprite, 0, x, y);