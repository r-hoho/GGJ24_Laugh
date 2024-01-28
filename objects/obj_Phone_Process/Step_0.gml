//Delay 1 sec before Start---------------
if (_timer_status == "start") {
	
    _timer -= 1;
	
	if (_timer <= 0) { _process_status = 1;}
}
//-----------------------------

if (_process_status == 1) {
    
	show_debug_message("PROCESS START")
	
	var _play2 = instance_create_depth(_x,_y,0,obj_Play_2);
	_play2.image_xscale = 0;
	_play2._select = _select;
	_play2._card_topic = _card_topic;
	
	_process_status = 2
	_timer_status = 0;
	_timer = 60;
	
}