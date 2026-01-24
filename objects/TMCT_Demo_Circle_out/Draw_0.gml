x = (ltrb[0]+ltrb[2])/2;
y = (ltrb[1]+ltrb[3])/2;
r = point_distance(ltrb[0],ltrb[1],ltrb[2],ltrb[3])/2
r = min(ltrb[2]-ltrb[0],ltrb[3]-ltrb[1])/2
draw_circle_colour(x,y,r,c_lime,c_lime,1)

