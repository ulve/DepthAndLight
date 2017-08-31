/// @description The moon 

with(oSky) {
	other.y = other.offset_from_top - (alpha - 0.9) * other.moon_max_y; // max night of 0.9 from nightcycle
}

if(y > moon_max_y) { // if moon has set
	x = moon_start;
} else {
	x += moon_x_step;
}

