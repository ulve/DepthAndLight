/// @description Insert description here
alpha = 0.0; // This gets set from NightController
sky_surface = surface_create(room_width, 160);
with(oNightCycle)  {
	other.night_length = nightlength;
}

amount_of_stars = 100;
var star_travel = 50; // the amonunt of pixles the moon will travel during night

for(i = 0; i < amount_of_stars; i++) {
	stars[i, 0] = random(room_width + star_travel)-star_travel;
	stars[i, 1] = random(160 + star_travel/2) - star_travel/2;
	stars[i, 2] = clamp(-1 * random(1)+.3, -1, 0);
	stars[i, 3] = (random(star_travel) + star_travel/2)  / (night_length*room_speed);
	stars[i, 4] = (random(star_travel/2) - star_travel/2) / (night_length*room_speed);
}

step = 0;
