///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition)) or
(instance_exists(obj_KSW_PhaseShifter))) canSelect = false;
#endregion

#region Background
background_TextY -= 2;
if (background_TextY <= -(598 + 48)) background_TextY += (598 + 48);
#endregion

#region Logo
logoWave = sine_between(global.currentTimePausable / 100,1,-2,2);
#endregion

#region Debug Full Save
if ((global.debug) and (keyboard_check_pressed(ord("L"))))
{
	scr_PlaySfx(snd_KSW_Score);
	
	scr_KSW_LoadFullSave();
}
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("left",playerNum))
	{
		scr_PlaySfx(snd_KSW_Bubble1);
		
		with (bubble[global.KSW_MainMenuSelection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = false;
			mediumTimer = mediumTimerMax;
		}
		
		global.KSW_MainMenuSelection -= 1;
		if (global.KSW_MainMenuSelection < 0) global.KSW_MainMenuSelection += buttonsList_Max + 1;
		
		with (bubble[global.KSW_MainMenuSelection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = true;
			mediumTimer = mediumTimerMax;
		}
	}
	
	if (input_check_pressed("right",playerNum))
	{
		scr_PlaySfx(snd_KSW_Bubble1);
		
		with (bubble[global.KSW_MainMenuSelection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = false;
			mediumTimer = mediumTimerMax;
		}
		
		global.KSW_MainMenuSelection += 1;
		if (global.KSW_MainMenuSelection > buttonsList_Max) global.KSW_MainMenuSelection -= buttonsList_Max + 1;
		
		with (bubble[global.KSW_MainMenuSelection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = true;
			mediumTimer = mediumTimerMax;
		}
	}
	
	switch (global.KSW_MainMenuSelection)
	{
		case KSW_MainMenu_Buttons.settings:
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_Enter);
			
			scr_GoToRoom(rm_KSW_Menu_Settings,false);
		}
		break;
		
		case KSW_MainMenu_Buttons.stars:
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_Enter);
			
			scr_GoToRoom(rm_KSW_Menu_Stars,false);
		}
		break;
		
		case KSW_MainMenu_Buttons.startFishing:
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_Enter);
			
			scr_GoToRoom(rm_KSW_Game,false);
		}
		break;
		
		case KSW_MainMenu_Buttons.fishbook:
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_Enter);
			
			scr_GoToRoom(rm_KSW_Menu_Fishbook,false);
		}
		break;
		
		case KSW_MainMenu_Buttons.discord:
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_Enter);
			
			url_open("https://discord.gg/RDc8RrcbeK");
		}
		break;
	}
	
	if (input_check_pressed("Y",playerNum))
	{
		scr_PlaySfx(snd_KSW_Enter);
		
		scr_GoToRoom(rm_KSW_Menu_Credits,false);
	}
	
	if ((input_check_pressed("B",playerNum)) or (keyboard_check_pressed(vk_escape)))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		var notifID = global.KSW_NotifIDs[? "exitGame"];
		scr_KSW_ObtainNotif(notifID,true);
	}
	
	#region Phase Timer
	if (phaseTimer != -1)
	{
		phaseTimer = max(phaseTimer - speedMultFinal,0);
		if (phaseTimer == 0)
		{
			var targetPhase = scr_KSW_Game_UpdatePhase();
			if (global.KSW_CurrentPhase != targetPhase)
			{
				var phaseShifter = instance_create_depth(0,0,0,obj_KSW_PhaseShifter);
				with (phaseShifter)
				{
					phase = targetPhase;
				}
			}
			
			phaseTimer = phaseTimerMax;
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
		scr_KSW_ParticleSet_Bubble(irandom_range(-10,room_width + 10),room_height,random_range(-.2,.2),irandom_range(-3,-2));
		
		bubbleTimer = bubbleTimerMax;
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion