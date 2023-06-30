// Check if slot is locked
if (inventorySlotIndex >= inventoryOwner.characterInventoryListUnlockedSlotCount) {
	inventorySlotIsLocked = true
}
else {
	inventorySlotIsLocked = false
}


// Detect Clicks in the GUI layer
if (position_meeting(mouse_gui_x,mouse_gui_y,id) and inventorySlotIsLocked == false) {

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

// Inventory Slot Logic

inventorySlotItem = inventoryOwner.characterInventoryList[inventorySlotIndex]


if (inventorySlotIsLocked == true) {

	hudArtInvetnorySlotItemSprite = SP_HUD_Icon_LockedSlot
	hudArtSprite = SP_UI_InventorySlot_Locked

}
else {
	
	if (inventorySlotItem == undefined) {
		hudArtInvetnorySlotItemSprite = SP_Default
	}
	else {
		hudArtInvetnorySlotItemSprite = inventorySlotItem.sprite_index
	}
	
	
}



