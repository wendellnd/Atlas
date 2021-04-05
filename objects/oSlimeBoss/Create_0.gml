hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 2;
flash = 0;
hp = 12;
before = 50;
grounded = false;
fpsj = 0;
move = 1;

state = SLIMEBSTATE.FREE;

enum SLIMEBSTATE
{
	FREE,
	HIT,
	DEAD
}