/// @description Insert description here
// You can write your code in this editor
/// @description Handle world events

// Asteroid spawning
spawn_timer += 1;
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;
    
    // Choose a random edge of the room to spawn from
    var spawn_edge = irandom(3); // 0: top, 1: right, 2: bottom, 3: left
    var spawn_x, spawn_y;
    
    switch(spawn_edge) {
        case 0: // Top
            spawn_x = random(room_width);
            spawn_y = 0;
            break;
        case 1: // Right
            spawn_x = room_width;
            spawn_y = random(room_height);
            break;
        case 2: // Bottom
            spawn_x = random(room_width);
            spawn_y = room_height;
            break;
        case 3: // Left
            spawn_x = 0;
            spawn_y = random(room_height);
            break;
    }
    
    // Spawn the asteroid
    var new_asteroid = instance_create_layer(spawn_x, spawn_y, "Instances", obj_asteroid);
    
    // Set asteroid direction towards the center of the room
    new_asteroid.direction = point_direction(spawn_x, spawn_y, irandom(room_width), irandom(room_height));
    
    // Set a random speed
    new_asteroid.speed = random_range(1, 3);
    
    // Optional: Set a random rotation
    new_asteroid.image_angle = random(360);
}