function PlayerState_Free() {
	//calculo de movimento

	var move = key_right - key_left;
	hsp = move * walksp;
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

	x += hsp;

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

	//pular
	canjump--;
	if (canjump > 0) && (key_jump)
	{
		vsp = -7.5;
		canjump = 0;
	}


	//animação

	delay++;
	if (place_meeting(x,y+1,oWall)){
		canjump = 7;
		airhit = 0;
		
		if (sprite_index = sAtlasJumpD){
			audio_play_sound(snLanding,960,false);
			repeat(8){
				with(instance_create_layer(x,bbox_bottom,"Atlas",oDust)){
					vspdust = 0;	
				}
			}
		}
		
		if(hsp == 0){
			sprite_index = sAtlas;
		}else{
			if(steps == 0) audio_play_sound(choose(snStep2,snStep3,snStep4),900,false);	
			if(steps == 20) audio_play_sound(choose(snStep2,snStep3,snStep4),900,false);
			if(steps == 40) steps = -1;
			sprite_index = sAtlasRun;
			steps++;
		}
	}else{
		if(vsp < 0){
			sprite_index = sAtlasJumpU;		
		}else{
			sprite_index = sAtlasJumpD;	
		}
	}
	if(hsp > 0){
			image_xscale = 1;
		}else if(hsp < 0){
			image_xscale = -1;
		}
	if (key_atk){
		if(!place_meeting(x,y+1,oWall)){
			airhit++;
		}
		if(airhit < 2) state = PLAYERSTATE.ATTACK_SLASH;
	}


}
