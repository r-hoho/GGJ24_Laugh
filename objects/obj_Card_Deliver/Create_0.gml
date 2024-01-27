_topic = noone;
_spd = 0.05;
_select = 0;
_queue = 0;

target_x = noone;
target_y = noone;

queue_y = 0;


qsignal_listen("Play_Done", function(_select) {
	
	if (self._select == _select) {
	
	_queue -= 1;
	}

});