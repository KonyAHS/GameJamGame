// Controller Object (obj_Controller) - Step Event

// Initialize array to store zombies


// Iterate through zombies and update positions
for (var i = 0; i < ds_list_size(zombies); i++) {
    var zombie = ds_list_find_value(zombies, i);

    // Update zombie position based on controller movement
	var newX = zombie.x + (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * Player.walking_speed;
    var newY = zombie.y + (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * Player.walking_speed;

	
    // Check for collision with existing zombies
    var collision = false;
    for (var j = 0; j < ds_list_size(zombies); j++) {
        var existingZombie = ds_list_find_value(zombies, j);

        // Skip the check for the same zombie
        if (existingZombie != zombie) {
            // Check for collision with existing zombie
            if (place_meeting(newX, newY, existingZombie)) {
                // If collision, set collision flag
                collision = true;
                break;
            }
        }
    }

    // If no collision, update zombie position
    if (!collision) {
        zombie.x = newX;
        zombie.y = newY;
    }
	
}

// Spawn new zombie when needed
if (keyboard_check_pressed(vk_space)) {
    if (instance_exists(Player)) {
        // Choose a random zombie from the list
        var randomZombieIndex = irandom(ds_list_size(zombies) - 1);
        var randomZombie = ds_list_find_value(zombies, randomZombieIndex);

        // Calculate a random position near the selected zombie
        var spawnDistance = 50; // Adjust this value based on your game's scale
        var spawnAngle = random(360);
        var spawnX = randomZombie.x + lengthdir_x(spawnDistance, spawnAngle);
        var spawnY = randomZombie.y + lengthdir_y(spawnDistance, spawnAngle);

        // Check for collision with existing zombies
        var collision = true;
        while (collision) {
            // Assume there is no collision
            collision = false;

            // Iterate through existing zombies to check for collisions
            for (var j = 0; j < ds_list_size(zombies); j++) {
                var existingZombie = ds_list_find_value(zombies, j);

                // Check for collision with existing zombie
                if (place_meeting(spawnX, spawnY, existingZombie)) {
                    // If collision, recalculate spawn position
                    collision = true;
                    spawnX = randomZombie.x + lengthdir_x(spawnDistance, spawnAngle);
                    spawnY = randomZombie.y + lengthdir_y(spawnDistance, spawnAngle);
                    break; // Break the loop to check collision again
                }
            }
        }

        // Create the new zombie at the calculated position using a different object type
        var newZombie = instance_create_depth(spawnX, spawnY, 100, Player2); // Use obj_Zombie or the appropriate object type
        ds_list_add(zombies, newZombie);
    }
}
