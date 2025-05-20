distance = point_distance(x, y, O_Player.x, O_Player.y) - playerDistance;
image_xscale = distance / 12;
sprite_index = S_LaserRope_Tracted_Create;
image_angle = point_direction(x, y, O_Player.x, O_Player.y);
alarm_set(0, 5);

O_Player.tracted = true;