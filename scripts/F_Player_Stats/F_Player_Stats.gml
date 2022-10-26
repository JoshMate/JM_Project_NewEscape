function F_Player_Stats_Init(){
	
	playerStatsHealth										= 100
	playerStatsStamina										= 100
	
	playerStatsHealthMaxBase							= 100
	playerStatsHealthMaxBonusMult						= 1
	playerStatsHealthMaxBonusFlat						= 0
	playerStatsHealthMaxFinal							= 0
	
	playerStatsStaminaMaxBase							= 100
	playerStatsStaminaMaxBonusMult					= 1
	playerStatsStaminaMaxBonusFlat					= 0
	playerStatsStaminaMaxFinal							= 0
	
	playerStatsMoveSpeedBase							= 4500
	playerStatsMoveSpeedBonusMult					= 1
	playerStatsMoveSpeedBonusFlat					= 0
	playerStatsMoveSpeedFinal							= 0
	
	playerStatsSprintMultBase							= 1.5
	playerStatsSprintMultBonusMult						= 1
	playerStatsSprintMultBonusFlat						= 0
	playerStatsSprintMultFinal								= 0

}

function F_Player_Stats_Step(){
	
	playerStatsHealthMaxFinal				= (playerStatsHealthMaxBase		* playerStatsHealthMaxBonusMult)			+ playerStatsHealthMaxBonusFlat
	playerStatsStaminaMaxFinal				= (playerStatsStaminaMaxBase		* playerStatsStaminaMaxBonusMult)		+ playerStatsStaminaMaxBonusFlat
	playerStatsMoveSpeedFinal				= (playerStatsMoveSpeedBase		* playerStatsMoveSpeedBonusMult)		+ playerStatsMoveSpeedBonusFlat
	playerStatsSprintMultFinal					= (playerStatsSprintMultBase		* playerStatsSprintMultBonusMult)			+ playerStatsSprintMultBonusFlat

}