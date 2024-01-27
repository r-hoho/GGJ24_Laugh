// Inherit the parent event
event_inherited();
//

qsignal_listen("rece_3", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_3 receiving: "+string(_received))
  
});



