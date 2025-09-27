///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("left",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		if ((selection % 2) == 0)
		{
			selection = min(selection + 1,selectionEnd - 1);
		}
		else
		{
			selection -= 1;
		}
	}
	
	if (input_check_pressed("right",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		if ((selection % 2) == 1)
		{
			selection -= 1;
		}
		else if ((selection) >= selectionEnd - 1)
		{
			selection -= (selection % 2);
		}
		else
		{
			selection += 1;
		}
	}
}
#endregion