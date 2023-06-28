function F_Draw_Text_Outline(textX = 0, textY = 0, textString = "Sample Text", font = FNT_HUD_HealthBarText, textColour = c_white, outlineColour = c_black){

	draw_set_font(font)
	
	// Draw outline
	draw_text_color(textX + 1, textY, textString, outlineColour, outlineColour, outlineColour, outlineColour,255)
	draw_text_color(textX - 1, textY, textString, outlineColour, outlineColour, outlineColour, outlineColour,255)
	draw_text_color(textX, textY + 1, textString, outlineColour, outlineColour, outlineColour, outlineColour,255)
	draw_text_color(textX, textY - 1, textString, outlineColour, outlineColour, outlineColour, outlineColour,255)
	
	// Draw actual text
	draw_text_color(textX, textY, textString, textColour, textColour, textColour, textColour,255)

}