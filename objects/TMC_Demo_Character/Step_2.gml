bottom = room_height-100;
x=median(0,x,room_width)
if(x==0 or x==room_width) hspeed = 0;
y=median(0,y,bottom)
if(y==0 or y==bottom) 
{
    hspeed = median(-4,hspeed,4);
    vspeed = 0;
}
if(hspeed!=0) image_xscale = sign(hspeed);



