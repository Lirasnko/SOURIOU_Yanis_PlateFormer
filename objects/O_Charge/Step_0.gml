var colPlayer = collision_rectangle(x, y, x + 16, y + 16, O_Player, true, false);

if (colPlayer > 0 && O_GrapinManager.grapinCharge < O_GrapinManager.grapinChargeMax) {
	O_GrapinManager.grapinCharge++;
	instance_deactivate_object(id);
}