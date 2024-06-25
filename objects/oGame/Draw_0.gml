//Draw game stats as part of stream overlay
if(global.gameroom)
{
	depth = -99999
	draw_set_font(fRubik)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_text(8,4,$"Best: {global.highScore}")
	draw_text(8,136,$"Viewers: {global.score}")
	draw_text(8,148,$"Progress: {global.progress}%")
	draw_set_color(c_black)
	draw_rectangle(4,162,124,166,false)
	draw_set_color(c_white)
	draw_rectangle(4,162,4 + (120 * (global.progress/100)),166,false)
}