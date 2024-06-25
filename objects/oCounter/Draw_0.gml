draw_set_alpha(alpha)
draw_set_font(fRubikBig)
draw_set_halign(fa_center)

//Make text red for losing points
if(value < 0)
{
	draw_set_color(c_red)
	draw_text(x,y,string(value))
}
//Make text bright green for gaining points
else
{
	draw_set_color(c_lime)
	draw_text(x,y,$"+{value}")
}

draw_set_alpha(1)