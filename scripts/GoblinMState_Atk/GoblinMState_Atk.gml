function GoblinMState_Atk() {
	hsp = 0;
	vsp = 0;

	if (sprite_index != sGoblinMeleeA2){
		sprite_index = sGoblinMeleeA2;
		image_index = 0;
		ds_list_clear(hitbyatkg);
	}

	mask_index = sGoblinMeleeA2Mask;
	var hitbyatknowg = ds_list_create();
		var hitsg = instance_place_list(x,y,oAtlas,hitbyatknowg,false);
		if (hitsg > 0){
			for ( var j = 0; j < hitsg; j++){
				var hitIdg = hitbyatknowg[|j];
				if (ds_list_find_index(hitbyatkg,hitIdg) == -1){
					ds_list_add(hitbyatkg,hitIdg);
					with(hitIdg){
						health--;
						atlasFlash = 10;
						vsp = -2;
						audio_play_sound(snHit,950,false);
					}
				}
			}
	}
	ds_list_destroy(hitbyatknowg);
	mask_index = sGoblinMeleeW;

	if(animation_end()){
		hsp = walksp * move;
		sprite_index = sGoblinMeleeW;
		state = GOBLINMSTATE.FREE;
	}


}
