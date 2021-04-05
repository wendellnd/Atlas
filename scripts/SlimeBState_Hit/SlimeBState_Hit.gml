function SlimeBState_Hit() {
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
	state = SLIMEBSTATE.FREE;


}
