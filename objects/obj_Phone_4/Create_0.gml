_like = choose( 1,2,3);
_score = global._startscore;
_reset = 0;

_received = noone;



qsignal_listen("rece_4", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_4 receiving: "+string(_received))
  
});