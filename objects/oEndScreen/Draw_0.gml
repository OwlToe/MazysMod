draw_set_alpha(alpha)
draw_set_color(c_black)

draw_rectangle(0,0,RESOLUTION_W, RESOLUTION_H,false)
draw_set_alpha(1)

if(alpha == 0.5)
{
	draw_set_font(fShowcard)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	if(not win)
	{
		var _text = "FAILURE"
	}
	else
	{
		var _text = "CLEAR!"
	}
	draw_text(RESOLUTION_W/2, RESOLUTION_H/3,_text)
	draw_set_font(fRubik)
	//draw_text(RESOLUTION_W/2, RESOLUTION_H/2,"Press R to restart")
}