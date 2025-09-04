///@description Draw

#region Text
if (text != "")
{
	scribble_font_set_default("fnt_Advance");
	
	var finalText = scr_String_ReplaceButtonSigns(text,upIcon,downIcon,leftIcon,rightIcon,AIcon,BIcon,XIcon,YIcon,LIcon,RIcon,LTIcon,RTIcon,startIcon,selectIcon);
	
	scribble("[alpha," + string(textAlpha) + "]" + finalText + "[/alpha]").draw(x,y + textWave);
}
#endregion