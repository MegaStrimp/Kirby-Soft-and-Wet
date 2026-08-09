///@description Main

if (!localPause)
{
	#region State Timer
	if (stateTimer != -1)
	{
		stateTimer = max(stateTimer - speedMultFinal,0);
		if (stateTimer == 0)
		{
			state += 1;
			
			switch (state)
			{
				case 1:
				stateTimer = 210;
				break;
				
				case 2:
				scr_PlaySfx(snd_KSW_FishGet);
				global.pause = true;
				
				var catchPopup = instance_create_depth(0,0,depth - 1,obj_KSW_UI_CatchPopup);
				with (catchPopup)
				{
					spriteIndex = spr_KSW_Menu_Aquarium_Fish;
				}
				
				stateTimer = 210;
				break;
				
				case 3:
				room_goto(rm_KSW_Menu_TitleScreen);
				
				global.KSW_EnteredAquariumAlt = true;
				scr_KSW_SaveData("data1.ini");
				
				stateTimer = -1;
				break;
			}
		}
	}
	#endregion
}