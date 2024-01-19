// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Create Event or in a script
function spawnZombie() {
    if (instance_exists(Player)) {
        // Choose a random zombie from the list
      
        var randomZombie = ds_list_find_value(global.zombies, 0);
        
        // Calculate the angle for the newly spawned zombie
        var angle = global.spawnedZombies * 360 / global.numZombiesInCircle;

        // Calculate the spawn position based on the angle
        var spawnX = randomZombie.x + lengthdir_x(global.spawnRadius, angle);
        var spawnY = randomZombie.y + lengthdir_y(global.spawnRadius, angle);

        // Create the new zombie at the calculated position
        var newZombie = instance_create_depth(spawnX, spawnY, 100, Player2); // Use obj_Zombie or the appropriate object type
        ds_list_add(global.zombies, newZombie);

        // Increment the count of spawned zombies
        global.spawnedZombies += 1;

        // Wrap the spawned zombie count to restart the circle after a certain point
        if (global.spawnedZombies >= global.numZombiesInCircle) {
            global.spawnRadius += 40;
            global.spawnedZombies = 0;
        }
    }
}
