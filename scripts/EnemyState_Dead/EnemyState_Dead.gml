function EnemyState_Dead() {
	repeat(8){
		with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
			vspdust = random_range(2,-2);
			hspdust = random_range(2,-2);
		}
	}
	if(object_index = oGoblinR){
		instance_create_layer(x,y,layer,oGoblinRD);
	}
	if(object_index = oGoblinM){
		instance_create_layer(x,y,layer,oGoblinMD);	
	}
	instance_destroy();



}
