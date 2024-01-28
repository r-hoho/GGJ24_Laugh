// Scrore is bleeding

if (_scoreStatus == 1) {
	
	 _score -= (1/60) ;
}


////

//if (_received != noone) {
    
//	if (_received == _like) {
//	    show_debug_message("I Like This!");
//		instance_create_depth(x,y,-1,obj_Noti_Like);
		
//		_score += global._likescore;
//	}
	
//	if (_received != _like) {
//	    show_debug_message("I DON'T like This!");
//		instance_create_depth(x,y,-1,obj_Noti_DONT);
//		_score -= (global._likescore/2);
//	}
	
//	_received = noone;
//	instance_destroy(obj_Card_Main);
//	qsignal_emit("Draw_New_Card")
//}

//if (_score >= global._winscore) { 
//	_score = global._startscore;
//	qsignal_emit("Score+1")
//    _reset = 1;
//}

//if (_score <= global._lossscore) { 
//	_score = global._startscore;
//	qsignal_emit("Loss+1")
//    _reset = 1;
//}

//if (_reset == 1) {
	
//	if (y >= -50) {
//		y -= 3;
//	} 
//	if ( y < -50) {
//		_reset = 2
//	}
		
//}

//if (_reset == 2) {

//	_like = choose( 1,2,3);
//	_score = global._startscore;
//	_reset = 3;

//}

//if (_reset == 3){
	
//	if (y <= 63) {
//		y += 3;
//	} 
//	if ( y > 63) {
//		_reset = 0
//	}
	
	
	
//}