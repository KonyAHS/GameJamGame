
// Enemy Step Event

// Collision detection, knockback, damage, and pause
if (place_meeting(x, y, Player)) {
    // Get the specific player instance
    var player_instance = instance_place(x, y, Player);
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
        instance_destroy();
    }
   
}

// Check if paused
if (pause_duration > 0) {
    dx = 0; // Stop movement while paused
    dy = 0;
    pause_duration -= 1; // Decrement pause duration
} else {
    // Get direction vector to player (only when not paused)
  
        dx = Player.x - x;
        dy = Player.y - y;

        // Normalize and scale direction
        var length = sqrt(dx * dx + dy * dy);
        dx /= length;
        dy /= length;
        dx *= move_spd;
        dy *= move_spd;
    
}

// Check for collisions and adjust movement
if (place_meeting(x + dx, y, collisionBox)) {
    dx = -dx; // Bounce horizontally
}
if (place_meeting(x, y + dy, collisionBox)) {
    dy = -dy; // Bounce vertically
}


// Move the enemy (only if not paused)
if (pause_duration <= 0) {
    x += dx;
    y += dy;
}

// Add additional enemy behavior and logic here

