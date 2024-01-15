// Enemy Step Event

// Get direction vector to player
var dx = Player.x - x;
var dy = Player.y - y;

// Normalize and scale direction
var length = sqrt(dx * dx + dy * dy);
dx /= length;
dy /= length;
dx *= move_spd; // Replace with your desired speed variable
dy *= move_spd;

// Enemy Step Event



// Check for collisions and adjust movement
if (place_meeting(x + dx, y, collisionBox)) {
    dx = -dx; // Bounce horizontally
}
if (place_meeting(x, y + dy, collisionBox)) {
    dy = -dy; // Bounce vertically
}

// Move the enemy
x += dx;
y += dy;


// Add additional enemy behavior and logic here
