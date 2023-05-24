function F_Actor_BASE_Stats_Init(){
	
	// Health Bar Stats
	actorStatsStamina										= 100
	
	actorStatsStaminaMaxBase								= 100
	actorStatsStaminaMaxBonusMult							= 1
	actorStatsStaminaMaxBonusFlat							= 0
	actorStatsStaminaMaxFinal								= 0
	
	actorStatsStaminaRegenBase								= 100
	actorStatsStaminaRegenMult								= 1
	actorStatsStaminaRegenFlat								= 0
	actorStatsStaminaRegenFinal								= 0
	
	// Movement Stats
	actorStatsMoveSpeedBase									= 2500
	actorStatsMoveSpeedBonusMult							= 1
	actorStatsMoveSpeedBonusFlat							= 0
	actorStatsMoveSpeedFinal								= 0
	
	actorStatsSprintMultBase								= 2
	actorStatsSprintMultBonusMult							= 1
	actorStatsSprintMultBonusFlat							= 0
	actorStatsSprintMultFinal								= 0
	
	// Stat Flags and Counters
	actorStaminaJustUsed									= false
	actorStaminaCanBeginRegen								= false
	actorStaminaCounter										= 0
	actorStaminaDelayCounter								= 0
	

}

function F_Actor_BASE_Stats_Step(){
	
	// Health Bar Stat Finals
	actorStatsStaminaMaxFinal				= (actorStatsStaminaMaxBase	* actorStatsStaminaMaxBonusMult)		+ actorStatsStaminaMaxBonusFlat
	actorStatsStaminaRegenFinal			= (actorStatsStaminaRegenBase	* actorStatsStaminaRegenMult)			+ actorStatsStaminaRegenFlat
	
	// Movement Stat Finals
	actorStatsMoveSpeedFinal				= (actorStatsMoveSpeedBase		* actorStatsMoveSpeedBonusMult)		+ actorStatsMoveSpeedBonusFlat
	actorStatsSprintMultFinal				= (actorStatsSprintMultBase	* actorStatsSprintMultBonusMult)		+ actorStatsSprintMultBonusFlat
	
	// Handle Stamina Regen
	actorStaminaJustUsed = false
	
	if (actorMovementIsSprinting) {actorStaminaJustUsed = true}
	
	if(actorStaminaJustUsed) {
		actorStaminaCanBeginRegen = false
		actorStaminaDelayCounter = 0
		actorStaminaCounter = 0
	}
	
	actorStaminaDelayCounter += global.settingActorStaminaRegenDelaySpeed
	
	if (actorStaminaDelayCounter >= global.settingCounterMax){
		actorStaminaDelayCounter = global.settingCounterMax;
		actorStaminaCanBeginRegen = true
	}
	
	if (actorStaminaCanBeginRegen) {actorStaminaCounter += actorStatsStaminaRegenFinal}
	
	while (actorStaminaCounter >= global.settingCounterMax){
		actorStaminaCounter -= global.settingCounterMax;
		actorStatsStamina += 1;
		if (actorStatsStamina >= actorStatsStaminaMaxFinal) {actorStatsStamina = actorStatsStaminaMaxFinal}
	}
}