// Inherit the parent event
event_inherited();
//

qsignal_listen("rece_1", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_1 receiving: "+string(_received))
  
});


