// Set movement speed and rotation speed
var rotation_speed = 6;
var max_speed = 10;
var acceleration = 0.1;
var deceleration = 0.1;


if (!variable_instance_exists(id, "current_speed")) {
    current_speed = 0;
}
if (!variable_instance_exists(id, "movement_direction")) {
    movement_direction = image_angle;
}


if (keyboard_check(vk_shift)) {
    rotation_speed += 2.0;
    max_speed += 2.0;
    acceleration += 0.1;
}

// Rotation
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    image_angle -= rotation_speed;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    image_angle += rotation_speed;
}

// Forward movement
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    current_speed = min(current_speed + acceleration, max_speed);
	movement_direction = image_angle;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    current_speed = max(current_speed - 2.5 * deceleration, 0);
} else {
    current_speed = max(current_speed - deceleration, 0);
}




var move_x = lengthdir_x(current_speed, movement_direction);
var move_y = lengthdir_y(current_speed, movement_direction);
x += move_x;
y += move_y;

if (keyboard_check_pressed(vk_space)) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    bullet.direction = image_angle;
    bullet.speed = 10;
}