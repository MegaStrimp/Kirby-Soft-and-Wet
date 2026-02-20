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
	
	var space = 16;
	var startY = 8 - (max(0,selection - 7) * space);
	for (var i = 0; i <= buttonsList_Max; i++)
	{
		if ((!mousePressed) and (scr_MouseIsInbetween(8,startY + (space * i),8 + 120,startY + (space * i) + 12)) and (mouse_check_button_pressed(mb_left)))
		{
			mousePressed = true;
			
			if (selection == i)
			{
				settingPressed = true;
			}
			else
			{
				scr_PlaySfx(snd_KSW_BossHealth);
				
				selection = i;
			}
		}
	}
	
	if ((scr_MouseIsInbetween(182,114,235,156)) and (mouse_check_button_pressed(mb_left))) settingPressed = true;
	
	if ((targetKey == "") and ((input_check_pressed("B",playerNum)) or (keyboard_check_pressed(vk_escape))) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		scr_KSW_SaveConfig("config.ini");
		scr_KSW_SaveControls("controls.ini");
		
		scr_GoToRoom(rm_KSW_Menu_TitleScreen,false);
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
		
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
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
		
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.soundVolume = min(global.soundVolume + .1,1);
		}
		break;
		#endregion
		
		case 2:
		#region Fullscreen
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("left",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				global.fullscreen = !global.fullscreen;
				window_set_fullscreen(global.fullscreen);
				
				scr_Screen_Setup(global.gameWidthTarget,global.gameHeightTarget,global.windowScaleTarget);
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		break;
		#endregion
		
		case 3:
		#region Window Size
		var scaleMax = max(floor(display_get_height() / global.gameHeight),1);
		scaleMax = max(scaleMax,1);
		
		if (input_check_pressed("left",playerNum))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				global.windowScaleTarget -= 1;
				if (global.windowScaleTarget <= 0) global.windowScaleTarget += scaleMax;
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				global.windowScaleTarget += 1;
				if (global.windowScaleTarget > scaleMax) global.windowScaleTarget -= scaleMax;
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		break;
		#endregion
		
		case 4:
		#region Fullscreen
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (input_check_pressed("left",playerNum)) or (input_check_pressed("right",playerNum)))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				global.shaders = !global.shaders;
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		break;
		#endregion
		
		case 5:
		#region Export Save
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				var targetFile = get_save_filename("Save Data|*.ini","data1.ini");
				if (targetFile != "") file_copy(scr_KSW_SaveData("data1.ini"),targetFile);
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		break;
		#endregion
		
		case 6:
		#region Import Save
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			if ((!global.isMobile) and (!global.isOpera))
			{
				scr_PlaySfx(snd_KSW_ButtonChange);
				
				var targetFile = get_open_filename("Save Data|*.ini","data1.ini");
				if (targetFile != "") scr_KSW_LoadData(targetFile,true);
			}
			else
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
			}
		}
		break;
		#endregion
		
		case 7:
		#region Delete Save
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			global.KSW_CurrentFishCombo = 0;
			
			var notifID = global.KSW_NotifIDs[? "deleteSave1"];
			scr_KSW_ObtainNotif(notifID,true);
		}
		break;
		#endregion
		
		case 8:
		#region Key Up
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 9:
		#region Key Down
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 10:
		#region Key Left
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 11:
		#region Key Right
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 12:
		#region Key A
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 13:
		#region Key B
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 14:
		#region Key X
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 15:
		#region Key L
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 16:
		#region Key R
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 17:
		#region Key LT
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 18:
		#region Key RT
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 19:
		#region Key Start
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
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
		
		case 20:
		#region Reset Keys
		if ((settingPressed) or (input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
		{
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
	
	//if (targetKey != "") and (keyboard_check_pressed(vk_escape)) targetKey = "";
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion