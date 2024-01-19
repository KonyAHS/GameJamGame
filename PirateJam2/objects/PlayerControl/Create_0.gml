/// @description Insert description here
// You can write your code in this editor
// Controller Object (obj_Controller) - Create Event

// Initialize array to store zombies
if (!variable_global_exists("zombies")) {
    global.zombies = ds_list_create();
}

// Add the original zombie (Player) to the zombies list
ds_list_add(global.zombies, Player);
global.spawnedZombies=0
global.spawnRadius = 50;
global.numZombiesInCircle = 8;