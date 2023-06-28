function F_Player_Stats_Init(){
	
	// Health Bar Stats
	playerStatsStamina										= 100
	playerStatsHunger										= 100
	playerStatsThirst										= 100
	
	playerStatsStaminaMaxBase								= 100
	playerStatsStaminaMaxBonusMult							= 1
	playerStatsStaminaMaxBonusFlat							= 0
	playerStatsStaminaMaxFinal								= 0
	
	playerStatsStaminaRegenBase								= 100
	playerStatsStaminaRegenMult								= 1
	playerStatsStaminaRegenFlat								= 0
	playerStatsStaminaRegenFinal							= 0
	
	playerStatsHungerMaxBase								= 100
	playerStatsHungerMaxBonusMult							= 1
	playerStatsHungerMaxBonusFlat							= 0
	playerStatsHungerMaxFinal								= 0
	
	playerStatsThirstMaxBase								= 100
	playerStatsThirstMaxBonusMult							= 1
	playerStatsThirstMaxBonusFlat							= 0
	playerStatsThirstMaxFinal								= 0
	
	// Movement Stats
	playerStatsMoveSpeedBase								= 2500
	playerStatsMoveSpeedBonusMult							= 1
	playerStatsMoveSpeedBonusFlat							= 0
	playerStatsMoveSpeedFinal								= 0
	
	playerStatsSprintMultBase								= 2
	playerStatsSprintMultBonusMult							= 1
	playerStatsSprintMultBonusFlat							= 0
	playerStatsSprintMultFinal								= 0
	
	// Stat Flags and Counters
	playerStaminaJustUsed									= false
	playerStaminaCanBeginRegen								= false
	playerStaminaCounter									= 0
	playerStaminaDelayCounter								= 0
	
	playerHungerCounter										= 0
	playerThirstCounter										= 0
	

}

function F_Player_Stats_Step(){
	
	// Health Bar Stat Finals
	playerStatsStaminaMaxFinal				= (playerStatsStaminaMaxBase	* playerStatsStaminaMaxBonusMult)	+ playerStatsStaminaMaxBonusFlat
	playerStatsStaminaRegenFinal			= (playerStatsStaminaRegenBase	* playerStatsStaminaRegenMult)		+ playerStatsStaminaRegenFlat
	playerStatsHungerMaxFinal				= (playerStatsHungerMaxBase		* playerStatsHungerMaxBonusMult)	+ playerStatsHungerMaxBonusFlat
	playerStatsThirstMaxFinal				= (playerStatsThirstMaxBase		* playerStatsThirstMaxBonusMult)	+ playerStatsThirstMaxBonusFlat
	
	// Movement Stat Finals
	playerStatsMoveSpeedFinal				= (playerStatsMoveSpeedBase		* playerStatsMoveSpeedBonusMult)		+ playerStatsMoveSpeedBonusFlat
	playerStatsSprintMultFinal				= (playerStatsSprintMultBase		* playerStatsSprintMultBonusMult)		+ playerStatsSprintMultBonusFlat
	
	// Handle Stamina Regen
	playerStaminaJustUsed = false
	
	if (playerMovementIsSprinting) {
		playerStaminaJustUsed = true
		//Drain Hunger and Thirst faster if Sprinting
		playerHungerCounter += 1
		playerThirstCounter += 1
	}
	
	if(playerStaminaJustUsed) {
		playerStaminaCanBeginRegen = false
		playerStaminaDelayCounter = 0
		playerStaminaCounter = 0
	}
	
	playerStaminaDelayCounter += global.settingPlayerStaminaRegenDelaySpeed
	
	if (playerStaminaDelayCounter >= global.settingCounterMaxStaminaRegenDelay){
		playerStaminaDelayCounter = global.settingCounterMaxStaminaRegenDelay;
		playerStaminaCanBeginRegen = true
	}
	
	if (playerStaminaCanBeginRegen) {playerStaminaCounter += playerStatsStaminaRegenFinal}
	
	while (playerStaminaCounter >= global.settingCounterMaxStaminaRegenRestore){
		playerStaminaCounter -= global.settingCounterMaxStaminaRegenRestore;
		playerStatsStamina += 1;
		playerStatsStamina = clamp(playerStatsStamina, 0, playerStatsStaminaMaxFinal);
		//Drain Hunger and Thirst faster if regenerating Stamina
		playerHungerCounter += 1
		playerThirstCounter += 1
	}
	
	// Handle Hunger and Thirst
	playerHungerCounter += 1
	playerThirstCounter += 1
	
	while (playerHungerCounter >= global.settingCounterMaxHungerDrain){
		playerHungerCounter -= global.settingCounterMaxHungerDrain;
		playerStatsHunger -= 1;
		playerStatsHunger = clamp(playerStatsHunger, 0, playerStatsHungerMaxFinal);
	}
	
	while (playerThirstCounter >= global.settingCounterMaxThirstDrain){
		playerThirstCounter -= global.settingCounterMaxThirstDrain;
		playerStatsThirst -= 1;
		playerStatsThirst = clamp(playerStatsThirst, 0, playerStatsThirstMaxFinal);
	}
	
}