qsignal_listen("Draw_New_Card", function() {
	
	show_debug_message("Draw_New_Card");
	instance_create_layer(160,136,"Instances",obj_Card);
	
  
});