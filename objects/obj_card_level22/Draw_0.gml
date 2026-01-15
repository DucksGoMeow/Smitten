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
		
		case "jade":
		sprite = spr_jade;
		break;
		
		case "karkat":
		sprite = spr_karkat;
		break;
		
		case "aradia":
		sprite = spr_aradia;
		break;
	}
}
else
{
	sprite = spr_card4;
}

draw_sprite(sprite, 0, x, y);