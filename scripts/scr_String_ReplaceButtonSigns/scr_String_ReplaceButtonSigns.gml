///@description String - Replace Button Signs

function scr_String_ReplaceButtonSigns(targetString,upIcon = undefined,downIcon = undefined,leftIcon = undefined,rightIcon = undefined,AIcon = undefined,BIcon = undefined,XIcon = undefined,YIcon = undefined,LIcon = undefined,RIcon = undefined,LTIcon = undefined,RTIcon = undefined,startIcon = undefined,selectIcon = undefined)
{
	var finalString = targetString;
	
	if (upIcon != undefined) finalString = string_replace_all(finalString,"[upIcon]",upIcon);
	if (downIcon != undefined) finalString = string_replace_all(finalString,"[downIcon]",downIcon);
	if (leftIcon != undefined) finalString = string_replace_all(finalString,"[leftIcon]",leftIcon);
	if (rightIcon != undefined) finalString = string_replace_all(finalString,"[rightIcon]",rightIcon);
	
	if (AIcon != undefined) finalString = string_replace_all(finalString,"[AIcon]",AIcon);
	if (BIcon != undefined) finalString = string_replace_all(finalString,"[BIcon]",BIcon);
	if (XIcon != undefined) finalString = string_replace_all(finalString,"[XIcon]",XIcon);
	if (YIcon != undefined) finalString = string_replace_all(finalString,"[YIcon]",YIcon);
	
	if (LIcon != undefined) finalString = string_replace_all(finalString,"[LIcon]",LIcon);
	if (RIcon != undefined) finalString = string_replace_all(finalString,"[RIcon]",RIcon);
	if (LTIcon != undefined) finalString = string_replace_all(finalString,"[LTIcon]",LTIcon);
	if (RTIcon != undefined) finalString = string_replace_all(finalString,"[RTIcon]",RTIcon);
	
	if (startIcon != undefined) finalString = string_replace_all(finalString,"[startIcon]",startIcon);
	if (selectIcon != undefined) finalString = string_replace_all(finalString,"[selectIcon]",selectIcon);
	
	return finalString;
}