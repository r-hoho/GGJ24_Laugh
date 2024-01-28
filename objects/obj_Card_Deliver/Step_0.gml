if (_queue <= 0) {instance_destroy()};

if (_queue == 1) {
    
	target_x = _select.x;
	target_y = _select.y;
	
	x = lerp(x, target_x, _spd);
	y = lerp(y, target_y-5 , _spd);
	image_xscale = 1;
	image_yscale = 1;
	
}

if (_queue > 1) {
	
	queue_y = (_queue * 16);
		
	x = lerp(x, target_x, _spd);
	y = lerp(y, target_y + queue_y, _spd);
	image_xscale = 0.75;
	image_yscale = 0.75;
		
}

if (_select == "Refresh") {
	
    image_angle += 4;
}

