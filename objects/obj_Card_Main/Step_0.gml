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
	
	if keyboard_check_released(ord("R")){
    
		_select = "Refresh"
		target_x = 350;
		target_y = 100;
	}
}
	
if ((_select == obj_Phone_1) or (_select == obj_Phone_2) or (_select == obj_Phone_3)) {
	
		_select._queue += 1;
		
		var queue_depth = _select._queue * -1
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

//Refresh Card
if ((_select == "Refresh")) {
	

		var _deliver = instance_create_depth(x,y,-1,obj_Card_Deliver);
		_deliver.sprite_index = self.sprite_index;
		_deliver.image_xscale = 0.75;
		_deliver.image_yscale = 0.75;
		//_deliver._topic = self._topic;
		_deliver._select = "Refresh";
		_deliver.target_x = target_x;
		_deliver.target_y = target_y;
		_deliver._queue = 2;
		
		qsignal_emit("Draw_New_Card",_topic)
		instance_destroy(self);
}
