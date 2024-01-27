_like = choose( 1,2,3);

_received = noone;



qsignal_listen("rece_1", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_1 receiving: "+string(_received))
  
});