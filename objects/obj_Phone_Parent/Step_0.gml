//Like Translate//

switch (_like) {
    case 1:
        _Translate = "CAT"
        break;
    case 2:
        _Translate = "TRAVEL"
        break;
    case 3:
        _Translate = "FOOD"
        break;
    case 4:
        _Translate = "FASHION"
        break;
}

// Scrore is bleeding

if (_scoreStatus == 1) && (_disconnected == 0) {
	
	 var _1 = (1/60) * ((GM_UI._total_score));
	 var _2 = (1/60)
	 _score -= max(_1,_2);
}

//

if (_score >= global._winscore) {
    _score = global._winscore;
	_reset = 1;
	_queue = 0;
	qsignal_emit("User_Done", self)
	qsignal_emit("Score+1")

}

if ((_score <= global._lossscore) && (_disconnected == 0)) {
	
    _score = 0;
	_disconnected = 1;

	//DO DISCONECTED
	qsignal_emit("Disconnected", self)
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
    
//}

//if (_score <= global._lossscore) { 
//	_score = global._startscore;
//	qsignal_emit("Loss+1")
//    _reset = 1;
//}

if (_reset == 1) {
	
	//_scoreStatus = "pause";
	
	if (y >= -50) {
		y -= 3;
	} 
	if ( y < -50) {
		_reset = 2
	}
		
}

if (_reset == 2) {

	_like = choose( 1,2,3,4);
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