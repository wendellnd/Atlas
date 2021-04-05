switch(state){
	case SLIMEPSTATE.FREE: EnemyState_Free(); break;	
	case SLIMEPSTATE.HIT: EnemyState_Hit(); break;
	case SLIMEPSTATE.DEAD: EnemyState_Dead(); break;
}