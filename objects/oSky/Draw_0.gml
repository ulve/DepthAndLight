/// @description Draw "skybox"

// setup
surface_set_target(sky_surface);
draw_clear($5E568F);
draw_set_alpha(alpha)
draw_set_color(c_black)

// Draw sky
draw_rectangle(0, 0, room_width, 160, false);

// draw moon
draw_sprite_ext(sMoon, 0, 200, 40, 1, 1, 0, c_white, alpha);

// reset
surface_reset_target();
draw_set_alpha(1.0);

// draw
draw_surface_ext(sky_surface, 0, 0, 1, 1, 0, c_white, 1.0);