hsp = 0;
vsp = 0;
grv = 0.25;
walksp = 4;
hascontrol = true;
canjump = 0;
health = 12;
delay = 0;
atlasFlash = 0;
state = PLAYERSTATE.FREE
hitbyatk = ds_list_create();
steps = 0;
airhit = 0;
	
enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}