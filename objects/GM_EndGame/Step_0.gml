_disconnected_count = instance_number(obj_Disconnected);

if (_disconnected_count >= 2) {
	
	_timer += 1;
}

if (_timer >= 120) {
    room_goto(rm_End);
}

