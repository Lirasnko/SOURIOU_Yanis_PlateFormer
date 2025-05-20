x = O_Player.x + 2;
y = O_Player.y - 3;

image_angle = point_direction(x, y, O_LaserRope_Swing.x + cos(degtorad(O_LaserRope_Swing.image_angle)) * (O_LaserRope_Swing.distance - 10), O_LaserRope_Swing.y - sin(degtorad(O_LaserRope_Swing.image_angle)) * (O_LaserRope_Swing.distance - 10));