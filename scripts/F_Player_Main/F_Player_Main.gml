function F_Player_Main_Init(){
	
	// Init Player Stuff on Creation
	F_Player_Draw_Init()

}

function F_Player_Main_Step(){
	
	// Happens Every Tick of the game
	F_Player_Movement_Step()
	
}

function F_Player_Main_GUI(){
	
	
}

function F_Player_Main_Draw(){

	// Draw visuals
	 F_Player_Draw_Draw()

}

