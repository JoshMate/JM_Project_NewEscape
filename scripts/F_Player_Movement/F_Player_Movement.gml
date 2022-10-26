function F_Player_Movement_Init() {
	
	// Init Player Movement Vars
	playerMovementCounter						= 0
	playerMovementCanMove						= true
	playerMovementIsSprinting					= false

}

function F_Player_Movement_Step() {
	

	// Check Input For Sprintings
	playerMovementIsSprinting = false
	if (playerInputActionSprint) playerMovementIsSprinting = true
	
	// Handle Sprinting
	if(playerMovementIsSprinting){
		F_Util_Debug_Log("Sprinting")
		playerMovementCounter += (playerStatsMoveSpeedFinal * playerStatsSprintMultFinal) 
	}
	if(!playerMovementIsSprinting){
		playerMovementCounter += playerStatsMoveSpeedFinal
		F_Util_Debug_Log(playerStatsMoveSpeedFinal)
	}
	

	while (playerMovementCounter >= global.settingCounterMax)
	{
		F_Util_Debug_Log("InsideMovement")
		// Execute Movement
		playerMovementCounter -=  global.settingCounterMax;
	
		// Get Player Input direction
		tempMoveX = -((playerInputMoveLeft		- playerInputMoveRight));
		tempMoveY = -((playerInputMoveUp		- playerInputMoveDown));
		tempMoveX_CanGo = 1;
		tempMoveY_CanGo = 1;
	
		// X Collisions (Sort through a list of all obstacles touching the player
		tempCollosionListX = ds_list_create();
		tempCollosionListX_Size = instance_place_list(x+tempMoveX, y, OB_Wall,tempCollosionListX,false);
		
		if(tempCollosionListX_Size > 0)
		{
			for (i = 0; i < tempCollosionListX_Size; i++;)
			{ 
				if(tempCollosionListX[| i].worldWallCanWalkThrough == false)tempMoveX_CanGo = 0;
			}
		}
		
		// Destroy List
		ds_list_destroy(tempCollosionListX)
		
		// Execute X movement
		if(playerMovementCanMove == true and tempMoveX_CanGo) x += tempMoveX;
		

		// Y Collisions (Sort through a list of all obstacles touching the player)
		tempCollosionListY = ds_list_create();
		tempCollosionListY_Size = instance_place_list(x, y+tempMoveY, OB_Wall,tempCollosionListY,false);
		
		if(tempCollosionListY_Size > 0)
		{
			for (i = 0; i < tempCollosionListY_Size; i++;)
			{ 
				if(tempCollosionListY[| i].worldWallCanWalkThrough == false)tempMoveY_CanGo = 0;
			}
		}
		
		// Destroy List
		ds_list_destroy(tempCollosionListY)
		
		// Execute Y movement
		if(playerMovementCanMove == true and tempMoveY_CanGo) y += tempMoveY;
	}

	
}