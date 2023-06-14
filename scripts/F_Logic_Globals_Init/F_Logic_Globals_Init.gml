function F_Logic_Globals_Init(){
	
	//Engine Settings
	game_set_speed(60, gamespeed_fps);
	
	// Version Number
	global.settingsVersionNumber								= "0.0.1"
	
	// Graphics Settings
	global.settingGraphicsScreenX								= 1920
	global.settingGraphicsScreenY								= 1080
	
	// Controls
	global.settingBindPlayerMoveUp								= ord("W")
	global.settingBindPlayerMoveDown							= ord("S")
	global.settingBindPlayerMoveLeft							= ord("A")
	global.settingBindPlayerMoveRight							= ord("D")
	
	global.settingBindPlayerActionSprint						= vk_shift
	global.settingBindPlayerActionDodge							= vk_space
	
	global.settingBindPlayerAttackPrimary						= mb_left
	global.settingBindPlayerAttackSecondary						= mb_right
	global.settingBindPlayerAttackTertiary						= mb_middle
	
	global.settingBindPlayerActionUse							= ord("E")
	global.settingBindPlayerActionReload						= ord("R")
	
	global.settingBindPlayerAction1								= ord("Q")
	global.settingBindPlayerAction2								= ord("F")
	global.settingBindPlayerAction3								= ord("C")
	global.settingBindPlayerAction4								= ord("V")
	global.settingBindPlayerAction5								= ord("G")
	global.settingBindPlayerAction6								= ord("T")
	global.settingBindPlayerAction7								= ord("X")
	
	global.settingBindPlayerSystemMenu							= vk_escape
	
	// Actor Stats
	global.settingPlayerStaminaSprintDrain						= 200
	global.settingPlayerStaminaRegenDelaySpeed					= 10
	
	// Counter Maxs
	global.settingCounterMax									= 1000
	
	global.settingCounterMaxStaminaRegenRestore					= 1000
	global.settingCounterMaxStaminaRegenDelay					= 1000
	
	global.settingCounterMaxHungerDrain							= 1600
	global.settingCounterMaxThirstDrain							= 1000
	
	
	
	
	
	
	
	
	
	
	//Temps
	global.gameHasStarted										= false

}