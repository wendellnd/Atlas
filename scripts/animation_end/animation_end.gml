function animation_end() {
	var _sprite = sprite_index;
	var _image = image_index;
	if(argument_count > 0) _sprite = argument[0];
	if(argument_count > 1) _sprite = argument[1];
	var _type = sprite_get_speed_type(sprite_index);
	var _spd = sprite_get_speed(sprite_index)*image_speed;
	if(_type == spritespeed_framespersecond)
		_spd = _spd/room_speed;
	if(argument_count > 2) _spd = argument[2];
	return _image+_spd >= sprite_get_number(_sprite);


}
