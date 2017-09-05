/// @description Applies hit shader whe hit
// You can write your code in this editor
if(invinsible) {
	shader_set(shd_hit);
	shader_params = shader_get_uniform(shd_hit, "strength");
	shader_set_uniform_f(shader_params, random(1));
	draw_self();  
	shader_reset();
} else {
	draw_self();
}