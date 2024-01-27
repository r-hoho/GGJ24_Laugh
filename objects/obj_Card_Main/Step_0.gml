if (_select == noone) {
	
	if keyboard_check_released(ord("1")){
		_select = obj_Phone_1;
		target_x = 32;
	}
	
	if keyboard_check_released(ord("2")){
    
		_select = obj_Phone_2;
		target_x = 110;
	}
	
	if keyboard_check_released(ord("3")){
    
		_select = obj_Phone_3;
		target_x = 190;
	}
}
	
if (_select != noone) {
	

		_select._queue += 1;
		
		var queue_depth = _select._queue * -1
		
		//show_debug_message("selecting: "+ string(_select));
		//qsignal_emit("rece_1", _topic);
		
		var _deliver = instance_create_depth(x,y,queue_depth,obj_Card_Deliver);
		_deliver.sprite_index = self.sprite_index;
		_deliver.image_xscale = 0.75;
		_deliver.image_yscale = 0.75;
		_deliver._topic = self._topic;
		_deliver._select = self._select;
		_deliver.target_x = target_x;
		_deliver.target_y = 32;
		_deliver._queue = _select._queue;
		
		qsignal_emit("Draw_New_Card",_topic)
		instance_destroy(self);
		
}
	
	//if keyboard_check_released(ord("2"))
	//{
    
	//	_select = 2;
	//	show_debug_message("selecting: "+ string(_select));
	//	qsignal_emit("rece_2", _topic);
	//}
	
	//if keyboard_check_released(ord("3"))
	//{
    
	//	_select = 3;
	//	show_debug_message("selecting: "+ string(_select));
	//	qsignal_emit("rece_3", _topic);
	//}
	
	//if keyboard_check_released(ord("4"))
	//{
    
	//	_select = 4;
	//	show_debug_message("selecting: "+ string(_select));
	//	qsignal_emit("rece_4", _topic);
	//}
	
//	if keyboard_check_released(vk_space)
//	{
    
//		show_debug_message("trash: "+ string(_select));
//		instance_destroy(self);
//		qsignal_emit("Draw_New_Card", _topic);
//	}

//}



