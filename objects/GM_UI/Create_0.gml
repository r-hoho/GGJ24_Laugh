_total_score = 0;
_total_loss = 0;

qsignal_listen("Score+1",function() {
	
	_total_score += 1;
	
});

qsignal_listen("Loss+1",function() {
	
	_total_loss += 1;
	
});