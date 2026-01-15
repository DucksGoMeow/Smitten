global.selectionNumber= 0;

global.match[0, 0] = "null";
global.match[0, 1] = 999;
global.match[1, 0] = "null";
global.match[1, 1] = 999;

global.can_select = true;
global.flipAttempts = 0;
global.highestScore = 39;

width = 6;
height = 3;

johnCount = 0;
daveCount = 0;
roseCount = 0;
jadeCount = 0;
karkatCount = 0;
aradiaCount = 0;
tavrosCount = 0;
solluxCount = 0;
nepetaCount = 0;

xx = 80;
yy = 125;

found = false;

randomize();
r = irandom(8); 

for (var i = 0; i < width; i++)
{ 
    for (var j = 0; j < height; j++)
    {
        var card = instance_create_depth(xx, yy, -100, obj_card_level40); 
        
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
                        r = irandom(8); 
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
                        r = irandom(8); 
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
                        r = irandom(8); 
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
                        r = irandom(8); 
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
                        r = irandom(8); 
                        found = false;
                    }
                break;
				
				case 5 :
                    if (aradiaCount < 2)
                    {
                        card.type = "aradia";
                        found = true;
                        aradiaCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(8); 
                        found = false;
                    }
                break;
				
				case 6 :
                    if (tavrosCount < 2)
                    {
                        card.type = "tavros";
                        found = true;
                        tavrosCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(8); 
                        found = false;
                    }
                break;
				
				case 7 :
                    if (solluxCount < 2)
                    {
                        card.type = "sollux";
                        found = true;
                        solluxCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(8); 
                        found = false;
                    }
                break;
				
				case 8 :
                    if (nepetaCount < 2)
                    {
                        card.type = "nepeta";
                        found = true;
                        nepetaCount++;
                    }
                    else
                    {
                        randomize();
                        r = irandom(8); 
                        found = false;
                    }
                break;
				
				
            }
        }
        randomize();
        r = irandom(8); 
        found = false;
        yy += 100;
    }
    xx += 80;
    yy = 125;
}




