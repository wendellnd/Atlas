if(flash > 0){
	flash--;
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
}else{
	draw_self();
}