qsignal_listen("Draw_New_Card", function(_topic) {
	
	//show_debug_message("Draw_New_Card");
	_newCard = instance_create_layer(152,136,"Instances",obj_Card_Main);
	show_debug_message("New Draw = "+string(_newCard._topic));
	
	if (_newCard._topic == _topic) { 
		instance_destroy(_newCard)
		qsignal_emit("Draw_New_Card",_topic);
	}
});