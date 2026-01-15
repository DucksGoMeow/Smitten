if (global.can_select == true)
{
	if (flipped == false)
	{
		flipped = true;
		global.flipAttempts++;
		global.selectionNumber++;
		
		global.match[global.selectionNumber-1, 0] = type;
		global.match[global.selectionNumber-1, 1] = id;
		
		if (global.selectionNumber == 2)
		{
		if  (global.match[0, 0] == global.match[1, 0]) //MATCH HAS BEEN FOUND
			{
				with (global.match[0, 1])
				{
					flipped = true;
					
				}
				with (global.match[1, 1])
				{
					flipped = true;
				}
				global.selectionNumber= 0;

				global.match[0, 0] = "null";
				global.match[0, 1] = 999;
				global.match[1, 0] = "null";
				global.match[1, 1] = 999;
				
			} 
			
			else
			{
				alarm[0] = room_speed * 0.5
			}
		}
	}
}



