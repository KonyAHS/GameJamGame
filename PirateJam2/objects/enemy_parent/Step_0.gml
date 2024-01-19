
// Enemy Step Event

// Collision detection, knockback, damage, and pause
if (place_meeting(x, y, PlayerControl)) {
    // Get the specific player instance
	
    var player_instance = instance_place(x, y, PlayerControl);
	pause_duration=pause_time;
    // Knockback
    var dx = x - player_instance.x; // Displacement between enemy and player
    var dy = y - player_instance.y;
    var angle = point_direction(0, 0, dx, dy); // Calculate knockback angle
    var push_force = 70; // Adjust knockback force as needed
	if (!place_meeting(x + sign(dx) * push_force, y, collisionBox) &&
    !place_meeting(x, y + sign(dy) * push_force, collisionBox)) {
    x += cos(angle) * push_force;
    y += sin(angle) * push_force;
}

    

    // Damage
    hp =hp- player_instance.dmg;

    // Destroy object if HP is below zero
    if (hp <= 0) {
		spawnZombie();
        instance_destroy();
    }
		
   
}

