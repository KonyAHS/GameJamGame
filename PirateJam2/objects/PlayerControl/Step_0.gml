// Controller Object (obj_Controller) - Step Event

// Initialize array to store zombies

// Variable to keep track of how many zombies have been spawned

// Spawn new zombie when needed
if (keyboard_check_pressed(vk_space)) {
    if (instance_exists(Player)) {
        // Choose a random zombie from the list
        var randomZombieIndex = irandom(ds_list_size(zombies) - 1);
        var randomZombie = ds_list_find_value(zombies, 0);
        // Calculate the angle for the newly spawned zombie
        var angle = spawnedZombies * 360 / numZombiesInCircle;

        // Calculate the spawn position based on the angle
        var spawnX = randomZombie.x + lengthdir_x(spawnRadius, angle);
        var spawnY = randomZombie.y + lengthdir_y(spawnRadius, angle);

        // Create the new zombie at the calculated position
        var newZombie = instance_create_depth(spawnX, spawnY, 100, Player2); // Use obj_Zombie or the appropriate object type
        ds_list_add(zombies, newZombie);

        // Increment the count of spawned zombies
       spawnedZombies += 1;
		show_debug_message(string(ds_list_size(zombies)))
        // Wrap the spawned zombie count to restart the circle after a certain point
        if (spawnedZombies >= numZombiesInCircle) {
            spawnRadius=spawnRadius+40
			spawnedZombies=0
        }
    }
}
