image_xscale -= (0.01);

if (image_xscale <= -1.25) {
	
	qsignal_emit("Play_Done",_select)
	
	instance_destroy()
	
	};