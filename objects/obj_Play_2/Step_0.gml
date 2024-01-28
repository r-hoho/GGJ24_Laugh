image_xscale -= (0.01);

if (_select._like == _card_topic) {
	

	if (image_xscale <= -1.25) {
	
		qsignal_emit("LIKE", _select);
		qsignal_emit("Play_Done",_select);
	
		instance_destroy()
		//_grey.visible = false;
	
		};
}

if (_select._like != _card_topic) {
	

	if (image_xscale <= -0.25) {
	
		qsignal_emit("DISLIKE", _select);
		qsignal_emit("Play_Done",_select)
	
		instance_destroy()
	
		};
}