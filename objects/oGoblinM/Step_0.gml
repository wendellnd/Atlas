switch(state){
	case GOBLINMSTATE.FREE: EnemyState_Free(); break;	
	case GOBLINMSTATE.HIT: EnemyState_Hit(); break;
	case GOBLINMSTATE.DEAD: EnemyState_Dead(); break;
	case GOBLINMSTATE.ATK: GoblinMState_Atk(); break;
}