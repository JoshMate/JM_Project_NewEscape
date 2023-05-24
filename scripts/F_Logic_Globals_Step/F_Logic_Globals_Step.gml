function F_Logic_Globals_Step(){
	
	global.logicGlobals						= instance_find(OB_Logic_Globals,0)
	global.logicControls					= instance_find(OB_Logic_Controls,0)
	global.logicCamera						= instance_find(OB_Logic_Camera,0)
	global.logicHud							= instance_find(OB_Logic_Hud,0)
	global.logicCharacter					= instance_find(OB_Logic_Character,0)
	global.logicPlayerEnt					= instance_find(OB_Player,0)
	
	
	// Start the Game!
	
	if (global.gameHasStarted == false) {
		global.gameHasStarted = true
		room_goto(RM_Map_TestingGrounds)
	}

}