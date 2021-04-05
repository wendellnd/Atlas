function PlayerState_Atk_Slash() {
	hsp = 0;
	vsp = 0;

	//Começo do ataque

	if (sprite_index != sAtlasAtk){
		sprite_index = sAtlasAtk;
		image_index = 0;
		ds_list_clear(hitbyatk);
		audio_play_sound(snSwing,970,false);
	}
	//Usando hitbox do atk e checando hits
	mask_index = sAtk_SlashHB;
	var hitbyatknow = ds_list_create();
	vector = [oSlime,oSlimeP,oSlimeBoss,oGoblinR,oGoblinM];
	for(i = 0;i < array_length_1d(vector);i++){
		var hits = instance_place_list(x,y,vector[i],hitbyatknow,false);
		if (hits > 0){
			for ( var j = 0; j < hits; j++){
				var hitId = hitbyatknow[|j];
				if (ds_list_find_index(hitbyatk,hitId) == -1){
					ds_list_add(hitbyatk,hitId);
					with(hitId){
						EnemyHit(2);
						audio_stop_sound(snSwing);
						audio_play_sound(snSwordHit,980,false);
					}
				}
			}
		}
	}
	ds_list_destroy(hitbyatknow);
	mask_index = sAtlas;

	if(animation_end()){
		sprite_index = sAtlas;
		state = PLAYERSTATE.FREE;
	}




}
