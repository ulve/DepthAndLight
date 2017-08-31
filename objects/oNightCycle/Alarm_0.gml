/// @description Night
with(oTorch) {
	if(other.alpha > lit_threshold) {
		lit = true;
	}
}

with(oRain) {
	part_system_depth(rain_system, 0);

}


if(alpha < 0.9)  {
	alpha += 0.01;
	alarm[0] = 1;
} else if(alpha >= 0.9) {	
	alarm[1] = room_speed * nightlength;
}

with(oSky) {
	alpha = other.alpha;
}