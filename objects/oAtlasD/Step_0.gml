vsp += grv;

//colisão horizontal

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}


//colisão vertical

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;
if(!place_meeting(x,y+1,oWall)){
	x += hsp;
	sprite_index = sAtlasD;
}else{
	sprite_index = sAtlasDC;
	hsp = 0;
	wait++;
	if(wait >= 300){
		SlideTransition(TRANS_MODE.GOTO,rGameOver);
	}
}