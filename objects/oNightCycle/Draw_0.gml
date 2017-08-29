/// @description Draw night and torches

// setup
surface_set_target(night_cycle_surface);
draw_clear(c_black);

// draw torch
with(oTorch) {
	if(lit) {	
		gpu_set_blendmode(bm_src_color);
		draw_sprite(sGlow,0, x, y);
		gpu_set_blendmode(bm_normal);
	}
}

// reset
surface_reset_target();

// draw
draw_surface_ext(night_cycle_surface, 0, 0, 1, 1, 0, c_white, alpha);