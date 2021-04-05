switch(state){
	case GOBLINRSTATE.FREE: EnemyState_Free(); break;	
	case GOBLINRSTATE.HIT: EnemyState_Hit(); break;
	case GOBLINRSTATE.DEAD: EnemyState_Dead(); break;
}