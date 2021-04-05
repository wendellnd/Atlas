switch(state){
	case SLIMESTATE.FREE: EnemyState_Free(); break;	
	case SLIMESTATE.HIT: EnemyState_Hit(); break;
	case SLIMESTATE.DEAD: EnemyState_Dead(); break;
}