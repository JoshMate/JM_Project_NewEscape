function F_Hud_AmmoCounter_Draw(){

	// ########################################################
	// DRAW AMMO COUNTER

	tempViewX				= global.settingGraphicsScreenX
	tempViewY				= global.settingGraphicsScreenY
	tempViewXScreenBorder	= 8
	tempViewYScreenBorder	= 8
	tempViewXBorder			= 48
	tempViewYBorder			= 12
	tempViewAmmoBoxLength	= 384
	tempViewAmmoBoxHeight	= 128
	tempViewAmmoTextPadding = 8
	
	tempViewAmmoBoxStartX   = tempViewX - tempViewXScreenBorder - tempViewAmmoBoxLength
	tempViewAmmoBoxStartY   = tempViewY - tempViewYScreenBorder - tempViewAmmoBoxHeight
	tempViewAmmoBoxEndX		= tempViewX - tempViewXScreenBorder
	tempViewAmmoBoxEndY		= tempViewY - tempViewYScreenBorder
	
	// Draw Background Box
	tempBGBoxX1 = tempViewAmmoBoxStartX
	tempBGBoxY1 = tempViewAmmoBoxStartY
	tempBGBoxX2 = tempViewAmmoBoxEndX
	tempBGBoxY2 = tempViewAmmoBoxEndY
	
	draw_roundrect_color(tempBGBoxX1,tempBGBoxY1,tempBGBoxX2,tempBGBoxY2,c_dkgrey,c_dkgrey,false)
	
	// Draw Item Name
	tempAmmoNameTextFont = FNT_HUD_AmmoCounterText
	tempAmmoNameTextString = "Unarmed"
	F_Draw_Text_Outline(tempViewAmmoBoxStartX + tempViewAmmoTextPadding + 64, tempViewAmmoBoxStartY + tempViewAmmoTextPadding, tempAmmoNameTextString, tempAmmoNameTextFont)
	
	// Draw Item Sprite
	tempItemSprite = SP_Weapon_Unarmed
	draw_sprite(tempItemSprite,0,tempViewAmmoBoxStartX + tempViewAmmoTextPadding,tempViewAmmoBoxStartY + tempViewAmmoTextPadding)
	
	// Draw Ammo Sprite
	tempAmmoSprite = SP_Hud_Icon_AmmoNone
	draw_sprite(tempAmmoSprite,0,tempViewAmmoBoxEndX - 64 - tempViewAmmoTextPadding,tempViewAmmoBoxEndY - 64 - tempViewAmmoTextPadding)
	
	// Draw Ammo Count Text
	tempAmmoCountTextFont = FNT_HUD_AmmoCounterText
	tempAmmoCountTextString = "0 / 0"
	draw_set_halign(fa_right)
	F_Draw_Text_Outline(tempViewAmmoBoxEndX - 96 - tempViewAmmoTextPadding, tempViewAmmoBoxEndY - 48 - tempViewAmmoTextPadding, tempAmmoCountTextString, tempAmmoCountTextFont)
	draw_set_halign(fa_left)
	

}