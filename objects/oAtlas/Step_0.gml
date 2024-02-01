//comandos do jogador
if(hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_atk = keyboard_check_pressed(ord("J"));
	key_jump = keyboard_check_pressed(vk_space);

	switch(state){
		case PLAYERSTATE.FREE: PlayerState_Free(); break;
		case PLAYERSTATE.ATTACK_SLASH: PlayerState_Atk_Slash(); break;
	}
	if(health <= 0){
		instance_create_layer(x,y,layer,oAtlasD);
		instance_destroy();
	}
	delay++;
}else{
	sprite_index = sAtlas;
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
