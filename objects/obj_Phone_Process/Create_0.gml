visible = false;
_timer_status = noone;
_timer = 60;

_card_topic = noone;

_process_status = 0;

_x = 0;
_y = 0;
_select = noone;


qsignal_listen("Play_Done", function(_select) {
	
	if (self._select.id == _select.id) {
	_process_status = 0;
	}

});

qsignal_listen("Disconnected", function(_select) {
	
	if (self._select.id == _select.id) {
	instance_destroy(self);
	}

});

