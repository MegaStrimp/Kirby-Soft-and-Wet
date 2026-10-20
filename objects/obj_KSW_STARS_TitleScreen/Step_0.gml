///@description Main

#region Text Timer
if (textTimer != -1)
{
	textTimer = max(textTimer - speedMultFinal,0);
	if (textTimer == 0)
	{
		textTimer = -1;
	}
}
#endregion

#region Exit Timer
if (exitTimer != -1)
{
	exitTimer = max(exitTimer - speedMultFinal,0);
	if (exitTimer == 0)
	{
		room_goto(rm_KSW_Menu_TitleScreen);
		
		exitTimer = -1;
	}
}
#endregion