function EnemyState_Free() {
	//Blue Slime
	if(sprite_index = sSlimeI) || (sprite_index = sSlimeJ){
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
			if(fpsj == 14){
				vsp = -5;
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
			sprite_index = sSlimeJ;
		}else{
			if (sprite_index = sSlimeJ){
				repeat(8){
					with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
						vspdust = 0;	
					}
				}
			}

			sprite_index = sSlimeI;		
		}
	//Purple Slime
	}else if(sprite_index = sSlimePI) || (sprite_index = sSlimePJ){
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
			if(fpsj == 14){
				vsp = -8;
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
			sprite_index = sSlimePJ;
		}else{
			if (sprite_index = sSlimePJ){
				repeat(8){
					with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
						vspdust = 0;	
					}
				}
			}

			sprite_index = sSlimePI;	
		}
	//GoblinRanged
	}else if(sprite_index = sGoblinRangedW) || (sprite_index = sGoblinRangedA1) || (sprite_index = sGoblinRangedA2) || (sprite_index = sGoblinRangedA3) || (sprite_index = sGoblinRangedA4) || (sprite_index = sGoblinRangedD){
		vsp += grv;
		//Inverter direção quando não houver chão
		if (grounded) && (afraidofheights) && (!place_meeting(x+hsp+before,y+1,oWall)){
			move = -move;
			dire = -dire;
			before = -before;
		}

		//colisão horizontal
		if (place_meeting(x+hsp,y,oWall))
		{
			while (!place_meeting(x+sign(hsp),y,oWall))
			{
				x += sign(hsp);
			}
			move = -move;
			before = -before;
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


		//está no chão?
		if(!place_meeting(x,y+1,oWall)){
			grounded = false;
		}else{
			grounded = true;
		}

		//animação
		if (hsp < 0){
			image_xscale = -1;
		}else if(hsp > 0){
			image_xscale = 1;
		}
		//Atlas tá perto?
		if(distance_to_object(oAtlas) <= 200){
			if(oAtlas.x > x){
				image_xscale = 1;
			}else if(oAtlas.x < x){
				image_xscale = -1;
			}
			hsp = 0;
			attack = true;
			GoblinRState_Atk();
		}else{
			if(attack == true){
				hsp = walksp * dire;
				attack = false;
			}
			hsp = move*walksp;
			x += hsp;
			sprite_index = sGoblinRangedW;
		}
	//GoblinMelee
	}else if(sprite_index = sGoblinMeleeA1) || (sprite_index = sGoblinMeleeA2) || (sprite_index = sGoblinMeleeI) || (sprite_index = sGoblinMeleeW) || (sprite_index = sGobinMeleeD){
		vsp += grv;
		//Inverter direção quando não houver chão
		if (grounded) && (afraidofheights) && (!place_meeting(x+hsp+before,y+1,oWall)){
			move = -move;
			before = -before;
		}

		//colisão horizontal

		if (place_meeting(x+hsp,y,oWall))
		{
			while (!place_meeting(x+sign(hsp),y,oWall))
			{
				x += sign(hsp);
			}
			move = -move;
		}
		hsp = move * walksp;
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


		//está no chão?
		if(!place_meeting(x,y+1,oWall)){
			grounded = false;
		}else{
			grounded = true;
		}


		//animação
		if (hsp < 0){
			image_xscale = -1;
		}else if(hsp > 0){
			image_xscale = 1;
		}
		if(distance_to_object(oAtlas) <= 10){
			if(oAtlas.x > x){
				image_xscale = -1;	
			}else if(oAtlas.x < x){
				image_xscale = 1;	
			}
			state = GOBLINMSTATE.ATK;
		}else{
			sprite_index = sGoblinMeleeW;
		}
	}


}
