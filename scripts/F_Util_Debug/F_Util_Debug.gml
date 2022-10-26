function F_Util_Debug_Log(A_Message){
	
	var V_String = "[JM Log] (" + string(object_get_name(object_index)) + "): " + string(A_Message)
 	show_debug_message(V_String);

}

function F_Util_Debug_PlayerOnDebugButtonPress(A_Player){

	F_Util_Debug_Log("This is a test");

}