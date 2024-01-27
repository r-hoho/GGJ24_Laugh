if (_select == noone) {
	
	if keyboard_check_released(ord("1"))
	{
		_select = 1;
		show_debug_message("selecting: "+ string(_select));
		qsignal_emit("rece_1", _topic);
		
	}
	
	if keyboard_check_released(ord("2"))
	{
    
		_select = 2;
		show_debug_message("selecting: "+ string(_select));
		qsignal_emit("rece_2", _topic);
	}
	
	if keyboard_check_released(ord("3"))
	{
    
		_select = 3;
		show_debug_message("selecting: "+ string(_select));
		qsignal_emit("rece_3", _topic);
	}

}
