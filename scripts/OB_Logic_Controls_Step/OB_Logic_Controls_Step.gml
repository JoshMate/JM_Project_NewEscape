function OB_Logic_Controls_Step(){
	
	// Check for presses
	controlsInputMoveUp								= keyboard_check(global.settingBindPlayerMoveUp);
	controlsInputMoveDown							= keyboard_check(global.settingBindPlayerMoveDown);
	controlsInputMoveLeft							= keyboard_check(global.settingBindPlayerMoveLeft);
	controlsInputMoveRight							= keyboard_check(global.settingBindPlayerMoveRight);
	
	controlsInputActionSprint						= keyboard_check(global.settingBindPlayerActionSprint)
	controlsInputActionDodge						= keyboard_check_pressed(global.settingBindPlayerActionDodge)
	
	controlsInputAttackPrimary						= mouse_check_button(global.settingBindPlayerAttackPrimary)
	controlsInputAttackSecondary					= mouse_check_button(global.settingBindPlayerAttackSecondary)
	controlsInputAttackTertiary						= mouse_check_button(global.settingBindPlayerAttackTertiary)
	
	controlsInputActionUse							= keyboard_check_pressed(global.settingBindPlayerActionUse)
	controlsInputActionReload						= keyboard_check_pressed(global.settingBindPlayerActionReload)
	
	controlsInputAction1							= keyboard_check_pressed(global.settingBindPlayerAction1)
	controlsInputAction2							= keyboard_check_pressed(global.settingBindPlayerAction2)
	controlsInputAction3							= keyboard_check_pressed(global.settingBindPlayerAction3)
	controlsInputAction4							= keyboard_check_pressed(global.settingBindPlayerAction4)
	controlsInputAction5							= keyboard_check_pressed(global.settingBindPlayerAction5)
	controlsInputAction6							= keyboard_check_pressed(global.settingBindPlayerAction6)
	controlsInputAction7							= keyboard_check_pressed(global.settingBindPlayerAction7)

	
	controlsInputCharacterMenu						= keyboard_check_pressed(global.settingBindPlayerCharacterMenu)
	controlsInputSyemMenu							= keyboard_check_pressed(global.settingBindPlayerSystemMenu)
	
	// DEBUG - End game on pressing escape
	if (controlsInputSyemMenu) {
		 F_Util_Debug_Log("Exiting Game Via Debug Escape!")
		game_end();
	}
	
	// Character Menu Toggle
	if (controlsInputCharacterMenu) {
		if (global.gameCharacterMenuIsOpen == true) {
			global.gameCharacterMenuIsOpen = false
			global.logicHud.hudScriptDestroyCharacterMenu();
		}
		else {
			global.gameCharacterMenuIsOpen = true
			global.logicHud.hudScriptCreateCharacterMenu();
			
		}
	}

}