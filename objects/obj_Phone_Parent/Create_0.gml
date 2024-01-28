_like = choose(1,2,3,4,5,6);
_score = global._startscore;

_scoreStatus = 1;

_queue = 0;

//_received = noone;
//_reset = 0;

qsignal_listen("Play_Done", function(_select) {
	
	if (self.id == _select.id) {
	_queue -= 1;
	_scoreStatus = 1;
	}

});

qsignal_listen("Score_Pause", function(_select) {
	
	if (self.id == _select.id) {
	_scoreStatus = "pause";
	}

});

qsignal_listen("LIKE", function(_select) {
	
	if (self.id == _select.id) {
	_score += global._likescore;
	}

});

qsignal_listen("DISLIKE", function(_select) {
	
	if (self.id == _select.id) {
	_score -= global._dislikescore;
	}

});

