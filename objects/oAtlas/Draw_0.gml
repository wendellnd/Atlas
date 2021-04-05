if(atlasFlash > 0){
	atlasFlash--;
	gpu_set_fog(true,c_red,0,0);
	draw_self();
	gpu_set_fog(false,c_red,0,0);
	hascontrol = false;
}else{
	hascontrol = true;
	draw_self();
}