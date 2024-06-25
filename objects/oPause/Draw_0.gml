if(pause)
{
	//var _spacing = 20
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fShowcard)
	draw_set_halign(fa_center)
	draw_text(RESOLUTION_W/2,RESOLUTION_H/4,"Stream Paused")
}

draw_set_alpha(1)