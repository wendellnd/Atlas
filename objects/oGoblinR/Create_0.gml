vsp = 0;
grv = 0.25;
walksp = 1.1;
move = 1;
hsp = walksp * move;
dire = 1;
before = 12;
attack = false;
afraidofheights = true;
grounded = false;

hp = 4;
flash = 0;

state = GOBLINRSTATE.FREE;

enum GOBLINRSTATE{
	FREE,
	HIT,
	DEAD
}