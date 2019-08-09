dodge -= 0.01;

if (clockwise) {
	image_angle -= 2;
} else {
	image_angle += 2;
}

if (dodge <= 0) {
	dodge = 3;
	direction = irandom_range(0,359);
	clockwise = !clockwise;
}

//no screen wrap, only bounce on map edge
if (x <= 32 ) {
	//bounce on left side
	if (choose(0,1) == 0) {
		dodge = 3;
		direction = irandom_range(0,90);
		clockwise = !clockwise;
	} else {
		dodge = 3;
		direction = irandom_range(270,359);
		clockwise = !clockwise;
	}
} else if ( x >= 468) {
	//bounce on right side
	if (choose(0,1) == 0) {
		dodge = 3;
		direction = irandom_range(90,180);
		clockwise = !clockwise;
	} else {
		dodge = 3;
		direction = irandom_range(180,270);
		clockwise = !clockwise;
	}	
}
////
if (y <= 32 ) {
	//bounce on top side
	if (choose(0,1) == 0) {
		dodge = 3;
		direction = irandom_range(180,270);
		clockwise = !clockwise;
	} else {
		dodge = 3;
		direction = irandom_range(270,359);
		clockwise = !clockwise;
	}
} else if ( y >= 468) {
	//bounce on bottom side
	if (choose(0,1) == 0) {
		dodge = 3;
		direction = irandom_range(90,180);
		clockwise = !clockwise;
	} else {
		dodge = 3;
		direction = irandom_range(90,180);
		clockwise = !clockwise;
	}	
}