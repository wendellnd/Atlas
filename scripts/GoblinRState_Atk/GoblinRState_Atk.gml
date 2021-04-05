function GoblinRState_Atk() {
	sprite_index = sGoblinRangedA2;
	if(animation_end(sprite_index)){
		if(oAtlas.x >= x){
			instance_create_layer(x+20,y-0.5,"lEnemy",oArrow);
		}else if(oAtlas.x < x){
			instance_create_layer(x+(-20),y-0.5,"lEnemy",oArrow);
		}
	}
	state = GOBLINRSTATE.FREE;



}
