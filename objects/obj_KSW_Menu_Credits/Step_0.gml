///@description Main

#region Variables
var canSelect = true;
if (
(global.pauseFinal) or
(instance_exists(obj_Transition))
) canSelect = false;
#endregion

#region Fish
fishIndex = (fishIndex + fishAnimSpd) % fishImageNumber;
#endregion

#region Sheets
sheetX = (sheetX + sheetSpd) % sheetWidth;
#endregion

#region Scroll Timer
if (scrollTimer != -1)
{
	scrollTimer = max(scrollTimer - speedMultFinal,0);
	if (scrollTimer == 0)
	{
		yScroll -= 1;
	
		scrollTimer = scrollTimerMax;
	}
}
#endregion

#region Selection
if (canSelect)
{
	if ((input_check_pressed("B",playerNum)) or (keyboard_check_pressed(vk_escape)))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		scr_GoToRoom(rm_KSW_Menu_TitleScreen,true);
	}
	
	#region Exit Timer
	if (exitTimer != -1)
	{
		exitTimer = max(exitTimer - speedMultFinal,0);
		if (exitTimer == 0)
		{
			scr_GoToRoom(rm_KSW_Menu_TitleScreen,true);
		
			exitTimer = -1;
		}
	}
	#endregion
}
#endregion

#region Bubble Timer
if (bubbleTimer != -1)
{
	bubbleTimer = max(bubbleTimer - speedMultFinal,0);
	if (bubbleTimer == 0)
	{
		scr_KSW_ParticleSet_Bubble(irandom_range(-10,room_width + 10),room_height,random_range(-.2,.2),random_range(-1,-.5));
		
		bubbleTimer = bubbleTimerMax;
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion