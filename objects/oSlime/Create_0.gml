hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 1.7;
flash = 0;
hp = 4;

before = 50;

grounded = false;

fpsj = 0;
move = 1;

state = SLIMESTATE.FREE;

enum SLIMESTATE
{
	FREE,
	HIT,
	DEAD
}