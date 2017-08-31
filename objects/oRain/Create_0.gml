// Rain system
rain_system = part_system_create();
part_system_depth(rain_system, -1200);

// Rain particle
rain_particle = part_type_create();
part_type_shape(rain_particle, pt_shape_line);
part_type_size(rain_particle, 0.5, 0.7, 0, 0);
part_type_color2(rain_particle, c_teal, c_white);
part_type_alpha2(rain_particle, 0.5, 0.1);
part_type_gravity(rain_particle, 0.1, 290);
part_type_direction(rain_particle, 250, 330, 0, 1);
part_type_speed(rain_particle, 0.5, 0.5, 0, 0);
part_type_orientation(rain_particle, 290, 290, 0, 0, 0);
part_type_life(rain_particle, 80, 150);

// Collision
collision_particle = part_type_create();
part_type_shape(collision_particle, pt_shape_square);
part_type_size(collision_particle, 0.6, 0.8, 0.01, 0);
part_type_scale(collision_particle, 0.3, 0.1);
part_type_color1(collision_particle, c_silver);
part_type_alpha2(collision_particle, 0.5, 0.1);
part_type_speed(collision_particle, 0, 0, 0, 0);
part_type_direction(collision_particle, 0, 0, 0, 0);
part_type_gravity(collision_particle, 0, 270);
part_type_life(collision_particle, 50, 90);

// Sequence
part_type_death(rain_particle, 1, collision_particle);

// Rain emitter
rain_emitter = part_emitter_create(rain_system);
part_emitter_region(rain_system, rain_emitter, -400, room_width+400, -100, -100, ps_shape_line, ps_distr_linear);
part_emitter_stream(rain_system, rain_emitter, rain_particle, 3);


repeat(room_speed * 3) {
	part_system_update(rain_system);
}