with(oNightCycle)  {
	other.night_length = nightlength;
}

var moon_travel = 600; // the amonunt of pixles the moon will travel during night

moon_max_y = 160; // when the moon is concidered set
offset_from_top = 20; // how hight in the sky the moon will travel too
moon_start = 50; // Where the moon will start its cycle

moon_x_step = moon_travel/(night_length * room_speed); // The amount the moon will travel each cycle