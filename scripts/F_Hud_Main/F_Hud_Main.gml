function F_Hud_Main_Init(){
	
	

}


function F_Hud_Main_DrawGUI(){
	
	// ########################################################
	// DRAW HEALTH BAR SECTION

	tempViewX				= global.settingGraphicsScreenX
	tempViewY				= global.settingGraphicsScreenY
	tempViewXBorder			= 48
	tempViewYBorder			= 12
	tempViewBarLength		= 360
	tempViewBarHeight		= 32
	
	// Draw Background Box
	tempBGBoxPaddingX = 32
	tempBGBoxPaddingY = 32
	tempBGBoxX1 = 0
	tempBGBoxY1 = tempViewY - (((tempViewBarHeight + tempViewYBorder) * 5) + tempBGBoxPaddingY)
	tempBGBoxX2 = ((tempViewBarLength + tempViewXBorder) + tempBGBoxPaddingX)
	tempBGBoxY2 = tempViewY
	tempBarIconPadding = 40
	
	draw_roundrect_color(tempBGBoxX1,tempBGBoxY1,tempBGBoxX2,tempBGBoxY2,c_dkgrey,c_dkgrey,false)
	
	// Draw New Health Bar - Player Health
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + tempViewBarLength
	tempHealthBarY1	= tempViewY - ((tempViewBarHeight + tempViewYBorder) * 5)
	tempHealthBarY2	= tempHealthBarY1 + tempViewBarHeight
	tempHealthBarValue = (global.logicPlayerEnt.entStatHealth / global.logicPlayerEnt.entStatHealthMaxFinal) * 100
	
	
	draw_sprite(SP_Hud_Icon_Bar_Health,0,tempHealthBarX1-tempBarIconPadding,tempHealthBarY1)
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_red,c_red,0,true,true)
	
	// Draw New Health Bar - Player Stamina
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + tempViewBarLength
	tempHealthBarY1	= tempViewY - ((tempViewBarHeight + tempViewYBorder) * 4)
	tempHealthBarY2	= tempHealthBarY1 + tempViewBarHeight
	tempHealthBarValue = (global.logicPlayerEnt.playerStatsStamina / global.logicPlayerEnt.playerStatsStaminaMaxFinal) * 100
	
	draw_sprite(SP_Hud_Icon_Bar_Stamina,0,tempHealthBarX1-tempBarIconPadding,tempHealthBarY1)
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_green,c_green,0,true,true)
	
	// Draw New Health Bar - Player Food
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + tempViewBarLength
	tempHealthBarY1	= tempViewY - ((tempViewBarHeight + tempViewYBorder) * 3)
	tempHealthBarY2	= tempHealthBarY1 + tempViewBarHeight
	tempHealthBarValue = (global.logicPlayerEnt.playerStatsHunger / global.logicPlayerEnt.playerStatsHungerMaxFinal) * 100
	
	draw_sprite(SP_Hud_Icon_Bar_Food,0,tempHealthBarX1-tempBarIconPadding,tempHealthBarY1)
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_yellow,c_yellow,0,true,true)
	
	// Draw New Health Bar - Player Water
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + tempViewBarLength
	tempHealthBarY1	= tempViewY - ((tempViewBarHeight + tempViewYBorder) * 2)
	tempHealthBarY2	= tempHealthBarY1 + tempViewBarHeight
	tempHealthBarValue = (global.logicPlayerEnt.playerStatsThirst / global.logicPlayerEnt.playerStatsThirstMaxFinal) * 100
	
	draw_sprite(SP_Hud_Icon_Bar_Water,0,tempHealthBarX1-tempBarIconPadding,tempHealthBarY1)
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_aqua,c_aqua,0,true,true)
	
	// Draw New Health Bar - Player Toxic
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + tempViewBarLength
	tempHealthBarY1	= tempViewY - ((tempViewBarHeight + tempViewYBorder) * 1)
	tempHealthBarY2	= tempHealthBarY1 + tempViewBarHeight
	tempHealthBarValue = (global.logicPlayerEnt.actorStatsToxic / global.logicPlayerEnt.actorStatsToxicMaxFinal) * 100
	
	draw_sprite(SP_Hud_Icon_Bar_Toxic,0,tempHealthBarX1-tempBarIconPadding,tempHealthBarY1)
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_purple,c_purple,0,true,true)
	

}