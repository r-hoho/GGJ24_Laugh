_like = choose( 1,2,3);

_received = noone;



qsignal_listen("rece_2", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_2 receiving: "+string(_received))
  
});