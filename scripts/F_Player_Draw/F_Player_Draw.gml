function F_Player_Draw_Init(){
	
	playerVisualsSpriteIndex				= SP_Player
	playerVisualsSpriteScale				= 1
	playerVisualsSpriteAngle				= 0
	playerVisualsSpriteColour				= c_white
	playerVisualsSpriteAlpha				= 255

}


function F_Player_Draw_DrawGUI(){
	
	tempViewX				= 1920
	tempViewY				= 1080
	tempViewXBorder	= 32
	tempViewYBorder	= 64
	
	// Draw New Health Bar - Player Health
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + 512
	tempHealthBarY1	= tempViewY - 100
	tempHealthBarY2	= tempHealthBarY1 +32
	tempHealthBarValue = (playerStatsHealth / playerStatsHealthMaxFinal) * 100
	
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_red,c_red,0,true,true)
	
	// Draw New Health Bar - Player Stamina
	tempHealthBarX1	= tempViewXBorder
	tempHealthBarX2	= tempHealthBarX1 + 512
	tempHealthBarY1	= tempViewY - (64)
	tempHealthBarY2	= tempHealthBarY1 + 32
	tempHealthBarValue = (playerStatsStamina / playerStatsStaminaMaxFinal) * 100
	
	draw_healthbar(tempHealthBarX1,tempHealthBarY1,tempHealthBarX2,tempHealthBarY2,tempHealthBarValue,c_black,c_green,c_green,0,true,true)
	

}

function F_Player_Draw_Draw(){
	
	playerVisualsSpriteAngle = point_direction(x,y,mouse_x,mouse_y)
	
	draw_sprite_ext( playerVisualsSpriteIndex, 0, x, y, playerVisualsSpriteScale, playerVisualsSpriteScale, playerVisualsSpriteAngle, playerVisualsSpriteColour, playerVisualsSpriteAlpha );

}