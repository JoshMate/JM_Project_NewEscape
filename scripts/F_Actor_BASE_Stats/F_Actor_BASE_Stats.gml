function F_Actor_BASE_Stats_Init(){
	
	// Movement Stats
	actorStatsMoveSpeedBase									= 2500
	actorStatsMoveSpeedBonusMult							= 1
	actorStatsMoveSpeedBonusFlat							= 0
	actorStatsMoveSpeedFinal								= 0
	
	// HealthBar
	actorStatsToxic											= 0
	
	actorStatsToxicMaxBase									= 1000
	actorStatsToxicMaxBonusMult								= 1
	actorStatsToxicMaxBonusFlat								= 0
	actorStatsToxicMaxFinal									= 0
	
	
	// Stat Flags and Counters

	

}

function F_Actor_BASE_Stats_Step(){
	 
	// Movement Stat Finals
	actorStatsMoveSpeedFinal				= (actorStatsMoveSpeedBase		* actorStatsMoveSpeedBonusMult)		+ actorStatsMoveSpeedBonusFlat
	
	// Health Bar Stat Finals
	actorStatsToxicMaxFinal					= (actorStatsToxicMaxBase		* actorStatsToxicMaxBonusMult)		+ actorStatsToxicMaxBonusFlat
	

}