function EnemyHit(argument0) {
	var _damage = argument0;

	hp -= _damage;
	if (hp > 0){
		EnemyState_Hit();
		flash = 10;
	}else{
		if(object_index = oSlime){
			state = SLIMESTATE.DEAD;
		}else if(object_index = oSlimeBoss){
			state = SLIMEBSTATE.DEAD;
		}else if(object_index = oSlimeP){
			state = SLIMEPSTATE.DEAD;
		}else if(object_index = oGoblinR){
			state = GOBLINRSTATE.DEAD;
		}else if(object_index = oGoblinM){
			state = GOBLINMSTATE.DEAD;
		}
	}
	if(oAtlas.x >= x){
		move = -1;
	}else{
		move = 1;
	}
	if(object_index = oGoblinM) || (object_index = oGoblinR){
		before = -before;
	}

	vsp = -2;



}
