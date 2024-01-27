// Inherit the parent event
event_inherited();
//

qsignal_listen("rece_4", function(_topic) {
	
	_received = _topic;
	show_debug_message("phone_4 receiving: "+string(_received))
  
});




