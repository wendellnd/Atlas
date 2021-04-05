function SlimeBState_Free() {
	vsp += grv;
	hsp = move * walksp;
	if(!place_meeting(x,y+1,oWall)){
		grounded = false;
	}else{
		grounded = true;
	}
	if (grounded) && (!place_meeting(x+hsp+before,y+1,oWall)){
		hsp = -hsp;
		before = -before;
	}
	
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		if (place_meeting(x,y+1,oWall)){
			move = -move;	
		}else{
			hsp = 0;
		}
	}

	//colisão vertical

	if (place_meeting(x,y+vsp,oWall))
		{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);
		}
		if(fpsj == 10){
			vsp = -13;
			fpsj = 0;
		}else{
			fpsj++;
			vsp = 0;
			hsp = 0;
		}
	}

	x+=hsp;
	y+=vsp;
	
	if(!place_meeting(x,y+4,oWall)){
		sprite_index = sSlimeBossJ;
	}else{
		if (sprite_index = sSlimeBossJ){
			repeat(8){
				with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
					vspdust = 0;	
				}
			}
		}
		sprite_index = sSlimeBossI;		
	}


}
