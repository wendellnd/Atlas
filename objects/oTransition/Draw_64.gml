//desenha barras pretas
if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(0,0,w+50,percent*h_half,false);
	draw_rectangle(0,h,w+50,h-(percent*h_half),false);
}
draw_set_color(c_white);