// Scrore is bleeding

if (_reset == 0 ) {_score -= (1/60) ;}

//

if (_received != noone) {
    
	if (_received == _like) {
	    show_debug_message("I Like This!");
		_score += 5;
	}
	
	if (_received != _like) {
	    show_debug_message("I DON'T like This!");
		_score -= 5;
	}
	
	_received = noone;
	instance_destroy(obj_Card);
	qsignal_emit("Draw_New_Card")
}

if (_score >= global._winscore) { 
    _reset = 1;
}

if (_score <= global._lossscore) { 
    _reset = 1;
}

if (_reset == 1) {
	
	if (y >= -50) {
		y -= 3;
	} 
	if ( y < -50) {
		_reset = 2
	}
		
}

if (_reset == 2) {

	_like = choose( 1,2,3);
	_score = global._startscore;
	_reset = 3;

}

if (_reset == 3){
	
	if (y <= 63) {
		y += 3;
	} 
	if ( y > 63) {
		_reset = 0
	}
	
	
	
}