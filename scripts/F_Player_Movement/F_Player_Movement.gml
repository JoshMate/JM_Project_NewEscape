function F_Player_Movement_Step() {
	

	// Check Input For Sprintings
	actorMovementIsSprinting = false
	if (global.logicControls.controlsInputActionSprint) actorMovementIsSprinting = true
	
	// Handle Sprinting
	if(actorMovementIsSprinting and actorStatsStamina > 0){
		actorMovementCounter += (actorStatsMoveSpeedFinal * actorStatsSprintMultFinal) 
		actorMovementSprintCounter += global.settingActorStaminaSprintDrain
		
		// Drain Stamina from sprinting
		while (actorMovementSprintCounter >= global.settingCounterMax){
		
			actorMovementSprintCounter -= global.settingCounterMax;
			actorStatsStamina -= 1
			if (actorStatsStamina <= 0) {actorStatsStamina = 0}
		
		}
	}
	if(!actorMovementIsSprinting or actorStatsStamina <= 0){
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
		tempCollosionListX_Size = instance_place_list(x+tempMoveX, y, OB_Wall,tempCollosionListX,false);
		
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
		tempCollosionListY_Size = instance_place_list(x, y+tempMoveY, OB_Wall,tempCollosionListY,false);
		
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