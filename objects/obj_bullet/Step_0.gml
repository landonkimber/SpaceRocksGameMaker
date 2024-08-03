/// @description Insert description here
// You can write your code in this editor
if (speed < 50) {
speed += 1.5;
}


if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}