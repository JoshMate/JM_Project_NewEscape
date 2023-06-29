function F_Hud_CharacterMenu_Create(){
	
	
	tempViewX						= global.settingGraphicsScreenX
	tempViewY						= global.settingGraphicsScreenY
	tempHudPanelWidth				= 704;
	tempViewXPanelStartLeft			= 0
	tempViewXPanelStartRight		= tempViewX-tempHudPanelWidth
	tempViewInventoryStartY			= tempViewY- (512 + 22)
	
	// Create Left Side Panel
	tempNewComponent = instance_create_layer(tempViewXPanelStartLeft,0,"UI_Bottom",OB_UI_Panel_SideBar);
	ds_list_add(tempHudCharacterMenuComponentsList, tempNewComponent)
	
	// Create Right Side Panel
	tempNewComponent = instance_create_layer(tempViewXPanelStartRight,0,"UI_Bottom",OB_UI_Panel_SideBar);
	ds_list_add(tempHudCharacterMenuComponentsList, tempNewComponent)
	
	// Draw Inventory Slots
	tempInvSlotRowCount = 0
	tempInvSlotColCount = 0
	tempInvSlotRowOfset = 0
	for(i=0;i<global.settingCharacterMaxInventorySize;i+=1){
		
		if (tempInvSlotRowCount >= 10) {
			tempInvSlotRowOfset += 64;
			tempInvSlotRowCount = 0
			tempInvSlotColCount += 1
		}
		
		tempNewSlotX = (tempViewXPanelStartRight + 32 + (tempInvSlotRowCount*64)) + tempInvSlotRowCount
		tempNewSlotY = (tempViewInventoryStartY + tempInvSlotRowOfset) + tempInvSlotColCount
		tempNewComponent = instance_create_layer(tempNewSlotX,tempNewSlotY,"UI_Middle",OB_UI_InventorySlot);
		ds_list_add(tempHudCharacterMenuComponentsList, tempNewComponent)
		tempInvSlotRowCount++;
	
	}
	
	
	

}

function F_Hud_CharacterMenu_Destroy(){
	
	for (i=0;i<ds_list_size(tempHudCharacterMenuComponentsList);i+=1){
	
		instance_destroy(ds_list_find_value(tempHudCharacterMenuComponentsList,i));
	
	}
	

}