if(oAtlas.image_xscale = 1){
	hsp = -3;
	image_xscale = 1;
}else{
	hsp = 3;
	image_xscale = -1;
}
wait = 0;
vsp = -4;
grv = 0.25;
done = 0;
audio_play_sound(snDeath,1000,false);