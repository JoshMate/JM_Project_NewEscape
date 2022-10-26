function OB_Logic_Controls_Step(){
	
	// Check for presses
	controlsInputMoveUp							= keyboard_check(global.settingBindcontrolsMoveUp);
	controlsInputMoveDown						= keyboard_check(global.settingBindcontrolsMoveDown);
	controlsInputMoveLeft							= keyboard_check(global.settingBindcontrolsMoveLeft);
	controlsInputMoveRight						= keyboard_check(global.settingBindcontrolsMoveRight);
	
	controlsInputActionSprint						= keyboard_check(global.settingBindcontrolsActionSprint)
	controlsInputActionDodge						= keyboard_check_pressed(global.settingBindcontrolsActionDodge)
	
	controlsInputActionAbility1					= keyboard_check_pressed(global.settingBindcontrolsActionAbility1)
	controlsInputActionAbility2					= keyboard_check_pressed(global.settingBindcontrolsActionAbility2)
	controlsInputActionAbility3					= keyboard_check_pressed(global.settingBindcontrolsActionAbility3)
	controlsInputActionAbility4					= keyboard_check_pressed(global.settingBindcontrolsActionAbility4)
	controlsInputActionAbility5					= keyboard_check_pressed(global.settingBindcontrolsActionAbility5)
	controlsInputActionAbility6					= keyboard_check_pressed(global.settingBindcontrolsActionAbility6)
	
	controlsInputSyemMenu						= keyboard_check_pressed(global.settingBindcontrolsSystemMenu)
	
	// DEBUG - End game on pressing escape
	if (controlsInputSyemMenu) {
		 F_Util_Debug_Log("Exiting Game Via Debug Escape!")
		game_end();
	}

}