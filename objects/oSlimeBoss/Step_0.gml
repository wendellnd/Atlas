switch(state){
	case SLIMEBSTATE.FREE: SlimeBState_Free(); break;	
	case SLIMEBSTATE.HIT: SlimeBState_Hit(); break;
	case SLIMEBSTATE.DEAD: SlimeBState_Dead(); break;
}