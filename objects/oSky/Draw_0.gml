/// @description Draw "skybox"

// setup
surface_set_target(sky_surface);
draw_clear($5E568F);
draw_set_alpha(alpha)
draw_set_color(c_black)

// Draw sky
draw_rectangle(0, 0, room_width, 160, false);

// draw stars
draw_set_color(c_yellow);

for(i = 0; i < amount_of_stars; i++) {
	var a = stars[i, 2]+alpha;
	if(a > 0) {
		draw_set_alpha(a);
		var xmove = stars[i, 3] * step;
		var ymove = stars[i, 4] * step;
		draw_rectangle(stars[i, 0] +  xmove, stars[i, 1] +ymove, stars[i, 0] + 4 +xmove, stars[i, 1] + 4 + ymove, false);
	} 
		
}

// draw moon
with(oMoon) {
	draw_sprite_ext(sMoon, 0, x, y, 1, 1, 0, c_white, other.alpha);
}

// reset
draw_set_alpha(1.0);
surface_reset_target();

// draw
draw_surface_ext(sky_surface, 0, 0, 1, 1, 0, c_white, 1.0);