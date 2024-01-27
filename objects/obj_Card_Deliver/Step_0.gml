if (_queue == 0) {instance_destroy()};

if (_queue == 1) {
    
	target_x = _select.x;
	target_y = _select.y;
	
	x = lerp(x, target_x, _spd);
	y = lerp(y, target_y , _spd);
	
}

if (_queue > 1) {
	
	queue_y = (_queue * 16);
		
	x = lerp(x, target_x, _spd);
	y = lerp(y, target_y + queue_y, _spd);
		
}

