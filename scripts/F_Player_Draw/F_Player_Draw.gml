function F_Player_Draw_Init(){
	
	playerVisualsSpriteIndex				= SP_Player
	playerVisualsSpriteScale				= 1
	playerVisualsSpriteAngle				= 0
	playerVisualsSpriteColour				= c_white
	playerVisualsSpriteAlpha				= 255

}

function F_Player_Draw_Draw(){
	
	playerVisualsSpriteAngle = point_direction(x,y,mouse_x,mouse_y)
	
	draw_sprite_ext( playerVisualsSpriteIndex, 0, x, y, playerVisualsSpriteScale, playerVisualsSpriteScale, playerVisualsSpriteAngle, playerVisualsSpriteColour, playerVisualsSpriteAlpha );

}