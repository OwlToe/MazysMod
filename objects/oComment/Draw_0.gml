var _maxW = 128
//Change color of body text depending on comment type
var _textColor = inappropriate ? c_red : c_white

draw_set_alpha(image_alpha)
draw_self()

draw_set_font(fRubik)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_yellow)
draw_text(x+4,y+4,username)

draw_set_color(_textColor)
draw_text_ext(x+4,y+16,text,-1,_maxW-4)

draw_set_alpha(1)