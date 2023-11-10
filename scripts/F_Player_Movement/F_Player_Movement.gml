function F_Player_Movement_Init() {

	playerMovementSprintCounter					= 0
	playerMovementIsSprinting					= false

}



function F_Player_Movement_Step() {
	

	// Check Input For Sprintings
	playerMovementIsSprinting = false
	if (global.logicControls.controlsInputActionSprint) playerMovementIsSprinting = true
	
	// Handle Sprinting
	if(playerMovementIsSprinting and playerStatsStamina > 0){
		actorMovementCounter += (actorStatsMoveSpeedFinal * playerStatsSprintMultFinal) 
		playerMovementSprintCounter += global.settingPlayerStaminaSprintDrain
		
		// Drain Stamina from sprinting
		while (playerMovementSprintCounter >= global.settingCounterMax){
		
			playerMovementSprintCounter -= global.settingCounterMax;
			playerStatsStamina -= 1
			if (playerStatsStamina <= 0) {playerStatsStamina = 0}
		
		}
	}
	if(!playerMovementIsSprinting or playerStatsStamina <= 0){
		actorMovementCounter += actorStatsMoveSpeedFinal
	}
	

	while (actorMovementCounter >= global.settingCounterMax)
	{
		F_Util_Debug_Log("InsideMovement")
		// Execute Movement
		actorMovementCounter -=  global.settingCounterMax;
	
		// Get Player Input direction
		tempMoveX = -((global.logicControls.controlsInputMoveLeft - global.logicControls.controlsInputMoveRight));
		tempMoveY = -((global.logicControls.controlsInputMoveUp - global.logicControls.controlsInputMoveDown));
		tempMoveX_CanGo = 1;
		tempMoveY_CanGo = 1;
	
		// X Collisions (Sort through a list of all obstacles touching the player
		tempCollosionListX = ds_list_create();
		tempCollosionListX_Size = instance_place_list(x+tempMoveX, y, OB_Wall_Concrete_Base,tempCollosionListX,false);
		
		if(tempCollosionListX_Size > 0)
		{
			for (i = 0; i < tempCollosionListX_Size; i++;)
			{ 
				if(tempCollosionListX[| i].entWorldCanWalkOver == false)tempMoveX_CanGo = 0;
			}
		}
		
		// Destroy List
		ds_list_destroy(tempCollosionListX)
		
		// Execute X movement
		if(actorMovementCanMove == true and tempMoveX_CanGo) x += tempMoveX;
		

		// Y Collisions (Sort through a list of all obstacles touching the player)
		tempCollosionListY = ds_list_create();
		tempCollosionListY_Size = instance_place_list(x, y+tempMoveY, OB_Wall_Concrete_Base,tempCollosionListY,false);
		
		if(tempCollosionListY_Size > 0)
		{
			for (i = 0; i < tempCollosionListY_Size; i++;)
			{ 
				if(tempCollosionListY[| i].entWorldCanWalkOver == false)tempMoveY_CanGo = 0;
			}
		}
		
		// Destroy List
		ds_list_destroy(tempCollosionListY)
		
		// Execute Y movement
		if(actorMovementCanMove == true and tempMoveY_CanGo) y += tempMoveY;
	}

	
}