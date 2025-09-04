///@description Main

#region Variables
var canSelect = true;
if ((global.pauseFinal) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("up",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		selection -= 1;
		if (selection < 0) selection += buttonsList_Max + 1;
	}
	
	if (input_check_pressed("down",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		selection += 1;
		if (selection > buttonsList_Max) selection -= buttonsList_Max + 1;
	}
	
	switch (selection)
	{
		case 0:
		#region Music Volume
		if (input_check_pressed("left",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.musicVolume = max(0,global.musicVolume - .1);
		}
		
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.musicVolume = min(global.musicVolume + .1,1);
		}
		break;
		#endregion
		
		case 1:
		#region Sfx Volume
		if (input_check_pressed("left",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.soundVolume = max(0,global.soundVolume - .1);
		}
		
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.soundVolume = min(global.soundVolume + .1,1);
		}
		break;
		#endregion
		
		case 2:
		#region Fullscreen
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("left",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.fullscreen = !global.fullscreen;
			window_set_fullscreen(global.fullscreen);
			
			scr_Screen_Setup(global.gameWidthTarget,global.gameHeightTarget,global.windowScaleTarget);
		}
		break;
		#endregion
		
		case 3:
		#region Window Size
		var scaleMax = max(floor(display_get_height() / global.gameHeight),1);
		scaleMax = max(scaleMax,1);
		
		if (input_check_pressed("left",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.windowScaleTarget -= 1;
			if (global.windowScaleTarget <= 0) global.windowScaleTarget += scaleMax;
		}
		
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.windowScaleTarget += 1;
			if (global.windowScaleTarget > scaleMax) global.windowScaleTarget -= scaleMax;
		}
		break;
		#endregion
		
		case 4:
		#region Delete Save
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.KSW_CurrentFishCombo = 0;
			
			var notifID = global.KSW_NotifIDs[? "deleteSave1"];
			scr_KSW_ObtainNotif(notifID,true);
		}
		break;
		#endregion
		
		case 5:
		#region Key Up
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "up";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 6:
		#region Key Down
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "down";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 7:
		#region Key Left
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "left";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 8:
		#region Key Right
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "right";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 9:
		#region Key A
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "A";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 10:
		#region Key B
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "B";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 11:
		#region Key X
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "X";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		/*
		case 9:
		#region Key Y
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "Y";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		*/
		
		case 12:
		#region Key L
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "L";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 13:
		#region Key R
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "R";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 14:
		#region Key LT
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "LT";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 15:
		#region Key RT
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "RT";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		case 16:
		#region Key Start
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "start";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		
		/*
		case 15:
		#region Key Select
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
	        targetKey = "select";
			
			input_binding_scan_start(function(newBinding)
			{
				input_binding_set_safe(targetKey,newBinding,0);
				buttonRemap_KeysText[0] = input_binding_get(targetKey);
				
				var i = 0;
				buttonRemap_KeysText[i] = input_binding_get("up");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("down");
				i += 1; 
				buttonRemap_KeysText[i] = input_binding_get("left");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("right");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("A");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("B");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("X");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("Y");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("L");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("R");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("LT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("RT");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("start");
				i += 1;
				buttonRemap_KeysText[i] = input_binding_get("select");
				
				targetKey = "";
			});
		}
		break;
		#endregion
		*/
		
		case 17:
		#region Reset Keys
		if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			//scr_PlaySfx(snd_Deirdre_Health);
			
			scr_KSW_DefaultKeybindings();
			
			var i = 0;
			buttonRemap_KeysText[i] = input_binding_get("up");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("down");
			i += 1; 
			buttonRemap_KeysText[i] = input_binding_get("left");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("right");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("A");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("B");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("X");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("Y");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("L");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("R");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("LT");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("RT");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("start");
			i += 1;
			buttonRemap_KeysText[i] = input_binding_get("select");
		}
		break;
		#endregion
	}
	
	if ((targetKey == "") and ((input_check_pressed("B",playerNum)) or (keyboard_check_pressed(vk_escape))))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		scr_KSW_SaveConfig("config.ini");
		scr_KSW_SaveControls("controls.ini");
		
		scr_GoToRoom(rm_KSW_Menu_TitleScreen,false);
	}
	
	//if (targetKey != "") and (keyboard_check_pressed(vk_escape)) targetKey = "";
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion