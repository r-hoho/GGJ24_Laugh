_like = choose(1,2,3,4,5,6);
_score = global._startscore;

_queue = 0;

//_received = noone;
//_reset = 0;

qsignal_listen("Play_Done", function(_select) {
	
	if (self.id == _select.id) {
	_queue -= 1;
	}

});

