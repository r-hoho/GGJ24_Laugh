
if (room == rm_Start) {

	draw_set_halign(fa_left);
	

	draw_text(50,50,"-----Algorithm-----");
	
	//draw_set_font(fn_m6_12);
	//draw_text(330,60,"by hoho, GlobalGameJam-24");
	
	
	draw_set_font(fn_m6_18);
	draw_text(50,100,"You're Application Algorithm");
	draw_text(50,150,"your job is to deliver content to user based on their interest.");
	draw_text(50,175,"Keep them Engaged, if losing 2 users you are LOSE!");
	
	draw_set_font(fn_m6_24);
	draw_text(50,210,"-----Controls-----")
	draw_set_font(fn_m6_18);
	draw_text(50,250,"[1] [2] [3] to deliver content to user, can queue in order")
	draw_text(50,275,"[R] to Refresh current content")
	
	draw_text(130,470,"CAT")
	draw_text(260,470,"TRAVEL")
	draw_text(410,470,"FOOD")
	draw_text(540,470,"FASHION")
	
	draw_text(750,500,"[ENTER] to Start");
	
	
	
	draw_set_font(fn_m6_24);
	
}


if ((room) == rm_End)  {

	draw_set_halign(fa_left);
	draw_text(50,100,"Total Score: "+string(global._finalscore));
	draw_text(50,150,"Thank You For Playing!");
	draw_text(50,300,"[R] to Restart");
}
