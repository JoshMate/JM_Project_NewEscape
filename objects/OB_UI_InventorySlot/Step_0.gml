// Detect Clicks in the GUI layer
if (position_meeting(mouse_gui_x,mouse_gui_y,id)) {

	//Show the Hover Image when hovered over
	sprite_index = hudArtOnHoverSprite
	script_execute(hudScriptWhileHovering)

	if(mouse_check_button_pressed(mb_left)) {
		script_execute(hudScriptOnLeftClick)
	}
	else if(mouse_check_button_pressed(mb_right)) {
		script_execute(hudScriptOnRightClick)
	}


}
else {
	sprite_index = hudArtSprite;
}