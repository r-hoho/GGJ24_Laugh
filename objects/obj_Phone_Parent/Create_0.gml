_like = choose(1,2,3,4);
_score = global._startscore;
_Translate = 0;

_scoreStatus = 1;

_queue = 0;
_disconnected = 0;

_reset = 0;

//_received = noone;


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

qsignal_listen("Disconnected", function(_select) {
	
	if (self.id == _select.id) {
	instance_create_depth(x,y,-100,obj_Disconnected);
	}

});


