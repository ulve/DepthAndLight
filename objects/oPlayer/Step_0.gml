/// @description Insert description here
// You can write your code in this editor
key_right =  keyboard_check(vk_right) || (gamepad_axis_value(global.pad, gp_axislh) > 0);
key_left = -(keyboard_check(vk_left)  || (gamepad_axis_value(global.pad, gp_axislh) < 0));
key_up =     keyboard_check(vk_up)    || (gamepad_axis_value(global.pad, gp_axislv) > 0);
key_down = -(keyboard_check(vk_down)  || (gamepad_axis_value(global.pad, gp_axislv) < 0));

var x_input = (key_right + key_left) * acceleration;
var y_input = (key_up + key_down) * acceleration;
var vector2_x = 0;
var vector2_y = 1;

velocity[vector2_x] = clamp(velocity[vector2_x] + x_input, -max_velocity[vector2_x], max_velocity[vector2_x]);
velocity[vector2_y] = clamp(velocity[vector2_y] + y_input, -max_velocity[vector2_y], max_velocity[vector2_y]);

if(x_input == 0) {
	velocity[vector2_x] = lerp(velocity[vector2_x], 0, friction);
}

if(y_input == 0) {
	velocity[vector2_y] = lerp(velocity[vector2_y], 0, friction);
}

x += velocity[vector2_x];
y += velocity[vector2_y];
depth = -1 * y