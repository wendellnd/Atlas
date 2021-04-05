vsp = 0;
grv = 0.25;
walksp = 1.3;
move = 1;
hsp = walksp * move;
before = 12;

hitbyatkg = ds_list_create();

afraidofheights = true;
grounded = false;

hp = 4;
flash = 0;

state = GOBLINMSTATE.FREE;

enum GOBLINMSTATE{
	FREE,
	HIT,
	DEAD,
	ATK
}