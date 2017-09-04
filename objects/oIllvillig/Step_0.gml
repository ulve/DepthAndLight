/// @description Insert description here
if(dx < 0) {
	image_xscale = -1;
} else  {
	image_xscale = 1;
}

if(place_meeting(x + dx, y, oBarrier)) {
	dx *= -1;
}

x += dx;