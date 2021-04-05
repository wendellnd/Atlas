if(delay > 80){
	health--;
	delay = 0;
	atlasFlash = 10;
	vsp = -2;
	audio_play_sound(snHit,950,false);
}