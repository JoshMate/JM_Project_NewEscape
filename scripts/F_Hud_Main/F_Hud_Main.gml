function F_Hud_Main_Init(){
	
	// Handle Character Menu
	tempHudCharacterMenuComponentsList = ds_list_create();
	hudScriptCreateCharacterMenu = F_Hud_CharacterMenu_Create
	hudScriptDestroyCharacterMenu = F_Hud_CharacterMenu_Destroy
	

}


function F_Hud_Main_DrawGUI(){
	
	// Draw HUD Health Bars
	F_Hud_HealthBars_Draw();
	
	// Draw Ammo Counter 
	F_Hud_AmmoCounter_Draw();
	


}