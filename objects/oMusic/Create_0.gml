/// @description Insert description here
// You can write your code in this editor
if(room = rMenu){
	if(!audio_is_playing(bgmusic)){
		audio_play_sound(bgmusic,1000,true);
	}
	if(audio_is_playing(bgmusic)){
		audio_stop_sound(bgmusic2);
	}
}else if(room = room0){
	if(!audio_is_playing(bgmusic)){
		audio_play_sound(bgmusic,1000,true);
	}
	if(audio_is_playing(bgmusic)){
		audio_stop_sound(bgmusic2);
	}
}else if(room = room1){
	if(!audio_is_playing(bgmusic)){
		audio_play_sound(bgmusic,1000,true);
	}
	if(audio_is_playing(bgmusic)){
		audio_stop_sound(bgmusic2);
	}
}else if(room = room2){
	if(audio_is_playing(bgmusic)){
		audio_stop_sound(bgmusic);
	}
	if(!audio_is_playing(bgmusic2)){
		audio_play_sound(bgmusic2,1000,true);
	}
}