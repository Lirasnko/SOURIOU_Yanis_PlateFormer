x = O_Player.x - 3;
y = O_Player.y - 3;

image_angle = point_direction(x, y, O_LaserRope.x + cos(degtorad(O_LaserRope.image_angle)) * (O_LaserRope.distance - 10), O_LaserRope.y - sin(degtorad(O_LaserRope.image_angle)) * (O_LaserRope.distance - 10));