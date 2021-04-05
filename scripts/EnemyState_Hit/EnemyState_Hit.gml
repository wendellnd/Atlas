function EnemyState_Hit() {
	with(oSlime){
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
		state = SLIMESTATE.FREE;
	}
	with(oSlimeP){
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
		state = SLIMEPSTATE.FREE;
	}
	with(oGoblinR){
		if (sprite_index = sGoblinRangedW){
			repeat(8){
				with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
					vspdust = 0;
				}
			}
		}
		state = GOBLINRSTATE.FREE;
	}
	with(oGoblinM){
		if (sprite_index = sGoblinMeleeW){
			repeat(8){
				with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
					vspdust = 0;
				}
			}
		}
		state = GOBLINMSTATE.FREE;
	}


}
