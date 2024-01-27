_like = choose(1,2,3,4,5,6);
_score = global._startscore;
_reset = 0;
_queue = 0;

_received = noone;


qsignal_listen("Play_Done", function(_select) {
	
	if (self.id == _select.id) {
	_queue -= 1;
	}

});

