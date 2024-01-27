// Inherit the parent event
event_inherited();
//

qsignal_listen("rece_2", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_2 receiving: "+string(_received))
  
});



