/// @description Day
with(oTorch) {
	if(other.alpha < lit_threshold) {
		lit = false;
	}
}

if(alpha > 0)  {
	alpha -= 0.01;
	alarm[1] = 1;
} else if(alpha <= 0) {
	alarm[0] = room_speed * daylength;
}

with(oSky) {
	alpha = other.alpha;
}