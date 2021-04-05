hsp = 0;
vsp = 0;
grv = 0.35;
walksp = 1.7;
flash = 0;
hp = 4;

before = 50;

grounded = false;

fpsj = 0;
move = 1;

state = SLIMEPSTATE.FREE;

enum SLIMEPSTATE
{
	FREE,
	HIT,
	DEAD
}