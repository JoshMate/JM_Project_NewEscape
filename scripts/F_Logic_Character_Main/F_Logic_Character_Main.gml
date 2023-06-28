function F_Logic_Character_Init(){
	
	// Setup default Inventory Setup
	characterInventoryList = ds_list_create()
	for (i=0; i<global.settingCharacterMaxInventorySize; i+=1) {
		characterInventoryList[i] = undefined
	}
	
	// Set how many of those slots are "unlocked" by default
	characterInventoryListUnlockedSlotCount = global.settingCharacterBaseInventorySlotsUnlocked;

}

function F_Logic_Character_Step(){

}