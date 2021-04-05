function SlimeBState_Dead() {
	repeat(8){
		with(instance_create_layer(x,bbox_bottom,"lEnemy",oDust)){
			vspdust = random_range(5,-2);
			hspdust = random_range(5,-2);
		}
	}
	instance_destroy();


}
