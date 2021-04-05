/// @description Update camera
// You can write your code in this editor

// Update destination

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;

}

// Update object position

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update camera view

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


if (layer_exists("Mountains")){
	layer_x("Mountains",x/2);	
}

if (layer_exists("Clouds")){
	layer_x("Clouds",x/3);	
}