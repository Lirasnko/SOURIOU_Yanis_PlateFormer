if (global.death) {
	instance_activate_object(O_Charge);
	O_GrapinManager.grapinCharge = O_GrapinManager.grapinChargeMax;
	global.death = false;
}