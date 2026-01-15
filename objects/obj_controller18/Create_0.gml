global.selectionNumber= 0;

global.match[0, 0] = "null";
global.match[0, 1] = 999;
global.match[1, 0] = "null";
global.match[1, 1] = 999;

global.can_select = true;
global.flipAttempts = 0;
global.highestScore = 15;

width = 5;
height = 2;

johnCount = 0;
daveCount = 0;
roseCount = 0;
jadeCount = 0;
karkatCount = 0;

xx = 155;
yy = 155;

found = false;

randomize();
r = irandom(4); 

for (var i = 0; i < width; i++)
{ 
    for (var j = 0; j < height; j++)
    {
        var card = instance_create_depth(xx, yy, -100, obj_card_level8); 
        
        while (found == false)
        {
            switch (r)
            {
                case 0 :
                    if (johnCount < 2)
                    {
                        card.type = "john";
                        found = true;
                        johnCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(4); 
                        found = false;
                    }
                break;
                
                case 1 :
                    if (daveCount < 2)
                    {
                        card.type = "dave";
                        found = true;
                        daveCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(4); 
                        found = false;
                    }
                break;
				
				case 2 :
                    if (roseCount < 2)
                    {
                        card.type = "rose";
                        found = true;
                        roseCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(4); 
                        found = false;
                    }
                break;
				
				case 3 :
                    if (jadeCount < 2)
                    {
                        card.type = "jade";
                        found = true;
                        jadeCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(4); 
                        found = false;
                    }
                break;
				
				case 4 :
                    if (karkatCount < 2)
                    {
                        card.type = "karkat";
                        found = true;
                        karkatCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(4); 
                        found = false;
                    }
                break;
            }
        }
        randomize();
        r = irandom(4); 
        found = false;
        yy += 120;
    }
    xx += 70;
    yy = 155;
}




