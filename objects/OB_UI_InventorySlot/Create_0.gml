// Allow the mouse to click in the GUI layer properly

#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)

// Art Settings
hudArtSprite							= sprite_index
hudArtOnHoverSprite						= SP_UI_InventorySlot_Hover

// Some Vars for the HUD Component
hudScriptOnLeftClick					= F_Default
hudScriptOnRightClick					= F_Default
hudScriptWhileHovering					= F_Default
