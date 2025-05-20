if (endPoint > xstart) {
	if (x <= xstart) {
		if (!right) {
			right = !right;
		}
	}
	if (x >= endPoint) {
		if (right) {
			right = !right;
		}
	}
}
else {
	if (x >= xstart) {
		if (right) {
			right = !right;
		}
	}
	if (x <= endPoint) {
		if (!right) {
			right = !right;
		}
	}
}

var move = random(1);
if (move < 0.01) {
	moving = !moving;
}

if (moving) {
	if (right) {
		hspeed = 0.5;
		image_xscale = -abs(image_xscale);
	}
	else {
		hspeed = -0.5;
		image_xscale = abs(image_xscale);
	}
}
else {
	hspeed = 0;
}