/// @description Insert description here
// You can write your code in this editor
rotation_speed = random_range(-4, 4);


/// Create Event of obj_asteroid

// Randomly choose between big and small asteroid
if (random(1) < 0.5) {
    // 50% chance for big asteroid
    sprite_index = spr_rock_big;
    mask_index = spr_rock_big;
} else {
    // 50% chance for small asteroid
    sprite_index = spr_rock_small;
    mask_index = spr_rock_small;
}

// Randomize the image_index for some visual variety
image_index = irandom(image_number - 1);

// Optional: Adjust other properties based on size
if (sprite_index == spr_rock_big) {
    // Properties for big asteroid
    hp = 3;
    speed = random_range(0.5, 1.5);
} else {
    // Properties for small asteroid
    hp = 1;
    speed = random_range(1, 2);
}

// Set a random rotation speed
rotation_speed = random_range(-2, 2);
