var _offset = 4
var _sHeight = 0
var _w = 112
draw_set_font(fRubik)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_self()

for(var _i = 0; _i < array_length(comments); _i++)
{
	var _comment = comments[_i]
	draw_set_color(c_yellow)
	draw_text(x+_offset,y+_offset+_sHeight,_comment.username)
	draw_set_color(c_white)
	draw_text_ext(x+_offset,y+_offset+_sHeight+10,_comment.text,-1,_w-_offset)
	//draw_text_ext(x+_offset,y+_offset+_sHeight+10,"The quick brown fox jumps over the lazy dog",-1,_w-_offset)
	_sHeight += 80//string_height_ext(_comment.text,-1,_w-_offset) + 10
}