function F_Logic_Cursor_Step(){
	
	if (global.gameCharacterMenuIsOpen == true) { cursorCurrentSprite = SP_UI_Cursor_Menu }
	if (global.gameCharacterMenuIsOpen == false) { cursorCurrentSprite = SP_UI_Cursor_Combat }

}