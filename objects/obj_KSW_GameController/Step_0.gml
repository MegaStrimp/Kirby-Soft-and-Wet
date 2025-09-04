///@description Main

if (!localPause)
{
	if ((!instance_exists(obj_Transition)) and (!instance_exists(obj_KSW_PhaseShifter)) and (exitTimer == -1))
	{
		switch (state)
		{
			case KSW_GameStates.idle:
			#region Throw
			if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
			{
				state = KSW_GameStates.waiting_Ready;
				canGoToMenu = false;
				canGoToFishbook = false;
				
				with (obj_KSW_Player)
				{
					threwBobber = false;
					
					scr_ChangeSprite(sprThrow);
				}
				
				stateReadyTimer = stateReadyTimerMax;
			}
			
			if ((global.debug) and (keyboard_check_pressed(ord("L"))))
			{
				for (var i = 0; i < ds_map_size(global.KSW_NotifIDs); i++)
				{
					var notifID = global.KSW_NotifList[i].id;
					
					scr_KSW_ObtainNotif(global.KSW_NotifIDs[? notifID],true);
				}
			}
			#endregion
			break;
			
			case KSW_GameStates.waiting:
			if (input_check_pressed("B",playerNum))
			{
				findFishTimer = -1;
				state = KSW_GameStates.idle_Ready;
				
				with (obj_KSW_Player) scr_ChangeSprite(sprReady);
				
				stateReadyTimer = stateReadyTimerMax;
			}
			break;
			
			case KSW_GameStates.catching:
			var success = false;
			var failed = false;
			
			if (input_check_pressed("B",playerNum))
			{
				failed = true;
			}
			
			if (input_check_pressed("up",playerNum))
			{
				if (catchInput_UpTriggered)
				{
					success = true;
					
					var parTargetX = 174;
					var parTargetY = 40;
					
					with (obj_KSW_Player)
					{
						scr_KSW_ParticleSet_Star(x,y,90);
						
						scr_ChangeSprite(sprUpAnim);
					}
				}
				else
				{
					failed = true;
				}
			}
			
			if (input_check_pressed("down",playerNum))
			{
				if (catchInput_DownTriggered)
				{
					success = true;
					
					var parTargetX = 174;
					var parTargetY = 88;
					
					with (obj_KSW_Player)
					{
						scr_KSW_ParticleSet_Star(x,y,270);
						
						scr_ChangeSprite(sprDownAnim);
					}
				}
				else
				{
					failed = true;
				}
			}
			
			if (input_check_pressed("left",playerNum))
			{
				if (catchInput_LeftTriggered)
				{
					success = true;
					
					var parTargetX = 150;
					var parTargetY = 64;
					
					with (obj_KSW_Player)
					{
						scr_KSW_ParticleSet_Star(x,y,180);
						
						scr_ChangeSprite(sprLeftAnim);
					}
				}
				else
				{
					failed = true;
				}
			}
			
			if (input_check_pressed("right",playerNum))
			{
				if (catchInput_RightTriggered)
				{
					success = true;
					
					var parTargetX = 198;
					var parTargetY = 64;
					
					with (obj_KSW_Player)
					{
						scr_KSW_ParticleSet_Star(x,y,0);
						
						scr_ChangeSprite(sprRightAnim);
					}
				}
				else
				{
					failed = true;
				}
			}
			
			if (success)
			{
				catchInput_UpTriggered = false;
				catchInput_DownTriggered = false;
				catchInput_LeftTriggered = false;
				catchInput_RightTriggered = false;
				
				catchInput_NextLineTimer = catchInput_NextLineTimerMax;
				
				failTimer = -1;
				
				scr_PlaySfx(catchInput_Sfx[catchInput_SfxIndex]);
				catchInput_SfxIndex = min(6,catchInput_SfxIndex + 1);
				
				scr_KSW_ParticleSet_Circle(parTargetX,parTargetY);
				
				if (((catchInput_SoundCount % 4) == 3) or (catchInput_CurrentLine == catchInput_CurrentLineMax - 1))
				{
					scr_PlaySfx(snd_KSW_CatchInputSpecial);
					
					scr_KSW_ParticleSet_StarSplash(parTargetX,parTargetY);
					
					scr_Camera_SetScreenshake(2,0);
				}
				else
				{
					scr_Camera_SetScreenshake(1,0);
				}
			}
			else if ((failed) or ((catchInput_NextLineTimer == -1) and (failTimer == -1)))
			{
				global.KSW_CurrentFishCombo = 0;
				
				state = KSW_GameStates.waiting_End;
				stateReadyTimer = stateReadyTimerMax * 2;
				
				failTimer = -1;
				
				with (obj_KSW_Player)
				{
					scr_ChangeSprite(sprFailed);
					
					scr_KSW_ParticleSet_Gloom(x,y - 12);
				}
				
				scr_PlaySfx(snd_KSW_ButtonError);
				
				catchInput_NextLineTimer = -1;
				catchInput_CurrentList = -1;
				catchInput_CurrentLine = -1;
				catchInput_CurrentLineMax = -1;
				catchInput_SfxIndex = 0;
				catchInput_NextLineTimer = -1;
				catchInput_UpTriggered = false;
				catchInput_DownTriggered = false;
				catchInput_LeftTriggered = false;
				catchInput_RightTriggered = false;
			}
			break;
			
			case KSW_GameStates.catchAnimation:
			#region Check If Fish Is New
			currentFishIsNew = ((!global.KSW_FishList[other.currentFish].isCaught) or ((other.currentFishIsShiny) and (!global.KSW_FishList[other.currentFish].isCaught)));
			#endregion
			
			#region Catch Animation Timer
			if (catchAnimationTimer != -1)
			{
				catchAnimationTimer = max(catchAnimationTimer - speedMultFinal,0);
				if (catchAnimationTimer == 0)
				{
					catchAnimationState += 1;
					
					switch (catchAnimationState)
					{
						case 1:
						scr_PlaySfx(snd_KSW_FishFound);
						
						with (obj_KSW_Player)
						{
							if (other.currentFishIsNew) scr_KSW_ParticleSet_New(x - (16 * dirX),y - 24);
							
							isShaking = true;
						}
						
						catchAnimationTimer = 30 + (currentFishIsNew * 30);
						break;
						
						case 2:
						scr_PlaySfx(snd_KSW_FishOut);
						
						switch (global.KSW_FishList[currentFish].rarity)
						{
							case 0:
							scr_PlaySfx(snd_KSW_Splash2);
							break;
							
							case 1:
							scr_PlaySfx(snd_KSW_Splash2);
							break;
							
							case 2:
							scr_PlaySfx(snd_KSW_Splash3);
							break;
							
							case 3:
							scr_PlaySfx(snd_KSW_Splash4);
							break;
						}
						
						if (global.KSW_FishList[currentFish].catchScript != -1) script_execute(global.KSW_FishList[currentFish].catchScript);
						
						with (obj_KSW_Player)
						{
							scr_ChangeSprite(sprSuccess);
							isShaking = false;
							
							scr_KSW_ParticleSet_WaterStar(bobberX,bobberY);
							
							var dummy = instance_create_depth(bobberX + global.KSW_FishList[other.currentFish].xOffset,bobberY + global.KSW_FishList[other.currentFish].yOffset,depth - 1,obj_KSW_CatchedFishDummy);
							dummy.sprite_index = global.KSW_FishList[other.currentFish].sprite;
							dummy.palSprite = global.KSW_FishList[other.currentFish].palette;
							if (other.currentFishIsNew)
							{
								dummy.palIndex = 3;
							}
							else
							{
								dummy.palIndex = other.currentFishIsShiny;
							}
						}
						
						catchAnimationTimer = 40 + (currentFishIsNew * 20);
						break;
						
						case 3:
						with (obj_KSW_CatchedFishDummy) instance_destroy();
						
						state = KSW_GameStates.catched;
						
						catchAnimationTimer = -1;
						break;
					}
				}
			}
			#endregion
			break;
			
			case KSW_GameStates.catched:
			var gramOffset = global.KSW_FishList[other.currentFish].gramOffset;
			global.levelScoreCurrent += global.KSW_FishList[other.currentFish].gram + irandom_range(-gramOffset,gramOffset);
			flag_ScoreSfx = true;
			global.KSW_CaughtTotalFishCount += 1;
			global.KSW_CurrentFishCombo += 1;
			global.KSW_FishList[other.currentFish].isCaught += 1;
			if (other.currentFishIsShiny) global.KSW_FishList[other.currentFish].isCaughtShiny += 1;
			catchCombo_YOffsetTimer = catchCombo_YOffsetTimerMax;
			
			var achievementID = global.KSW_AchievementIDs[? "catch1"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "catch50"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "catch100"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "catch500"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "catch2500"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "catch5000"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			
			var achievementID = global.KSW_AchievementIDs[? "combo25"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "combo50"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "combo100"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			
			var achievementID = global.KSW_AchievementIDs[? "grams10k"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "grams200k"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "grams1m"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			var achievementID = global.KSW_AchievementIDs[? "grams10m"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			
			switch (global.KSW_CurrentPhase)
			{
				case KSW_Phases.day:
				global.KSW_CaughtTotalFishCount_Day += 1;
				
				var achievementID = global.KSW_AchievementIDs[? "catchDay100"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				var achievementID = global.KSW_AchievementIDs[? "catchDay1000"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				break;
				
				case KSW_Phases.afternoon:
				global.KSW_CaughtTotalFishCount_Afternoon += 1;
				
				var achievementID = global.KSW_AchievementIDs[? "catchAfternoon100"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				var achievementID = global.KSW_AchievementIDs[? "catchAfternoon1000"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				break;
				
				case KSW_Phases.night:
				global.KSW_CaughtTotalFishCount_Night += 1;
				
				var achievementID = global.KSW_AchievementIDs[? "catchNight100"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				var achievementID = global.KSW_AchievementIDs[? "catchNight1000"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				break;
			}
			
			if (currentFishIsNew)
			{
				if (other.currentFishIsShiny)
				{
					global.KSW_CaughtShinyFishCount += 1;
					
					var notifID = global.KSW_NotifIDs[? "shiny"];
					if (global.KSW_NotifList[notifID].unlockScript()) scr_KSW_ObtainNotif(notifID);
					
					var achievementID = global.KSW_AchievementIDs[? "catchShiny"];
					if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
					
					var achievementID = global.KSW_AchievementIDs[? "catchShinyAll"];
					if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				}
				else
				{
					global.KSW_CaughtUniqueFishCount += 1;
					
					var achievementID = global.KSW_AchievementIDs[? "catchUnique20"];
					if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
					var achievementID = global.KSW_AchievementIDs[? "catchUnique100"];
					if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
					var achievementID = global.KSW_AchievementIDs[? "catchUniqueAll"];
					if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				}
				
				scr_KSW_Game_UpdateDiscord();
				
				scr_PlaySfx(snd_KSW_FishGet);
				global.pause = true;
				
				var catchPopup = instance_create_depth(0,0,depth - 1,obj_KSW_UI_CatchPopup);
				with (catchPopup)
				{
					spriteIndex = global.KSW_FishList[other.currentFish].sprite;
					spritePalette = global.KSW_FishList[other.currentFish].palette;
					spriteXOffset = global.KSW_FishList[other.currentFish].xOffset;
					spriteYOffset = global.KSW_FishList[other.currentFish].yOffset;
					name = string_upper(global.KSW_FishList[other.currentFish].name);
					rarity = global.KSW_FishList[other.currentFish].rarity;
					phase = global.KSW_FishList[other.currentFish].phase;
					isShiny = other.currentFishIsShiny;
					backgroundPalette = global.KSW_FishList[other.currentFish].caughtBoxPalette;
					isTenna = global.KSW_FishList[other.currentFish].isTenna;
					
					if (rarity > 0) starTimer = 20;
				}
			}
			else
			{
				scr_PlaySfx(snd_KSW_Unlock);
			}
			
			scr_KSW_SaveData("data1.ini");
			
			with (obj_KSW_UI_CaughtBox)
			{
				yTarget -= 36;
			}
			
			var caughtBox = instance_create_depth(-32,96,depth,obj_KSW_UI_CaughtBox);
			with (caughtBox)
			{
				spriteIndex = global.KSW_FishList[other.currentFish].sprite;
				spritePalette = global.KSW_FishList[other.currentFish].palette;
				spriteXOffset = global.KSW_FishList[other.currentFish].xOffset;
				spriteYOffset = global.KSW_FishList[other.currentFish].yOffset;
				rarity = global.KSW_FishList[other.currentFish].rarity;
				phase = global.KSW_FishList[other.currentFish].phase;
				isShiny = other.currentFishIsShiny;
				isNew = other.currentFishIsNew;
				backgroundPalette = global.KSW_FishList[other.currentFish].caughtBoxPalette;
				isTenna = global.KSW_FishList[other.currentFish].isTenna;
			}
			
			findFishTimer = -1;
			state = KSW_GameStates.idle_Ready;
			
			stateReadyTimer = stateReadyTimerMax;
			break;
		}
		
		#region Exit To Menu
		if (canGoToMenu)
		{
			if (input_check_pressed("B",playerNum))
			{
				scr_PlaySfx(snd_KSW_ButtonNo);
				
				exitTarget = rm_KSW_Menu_TitleScreen;
				exitTimer = exitTimerMax;
			}
		}
		#endregion
		
		#region Exit To Fishbook
		if (canGoToFishbook)
		{
			if (input_check_pressed("Y",playerNum))
			{
				scr_PlaySfx(snd_KSW_ButtonYes);
				
				exitTarget = rm_KSW_Menu_Fishbook;
				exitTimer = exitTimerMax;
			}
		}
		#endregion
		
		#region Find Fish Timer
		if (findFishTimer != -1)
		{
			findFishTimer = max(findFishTimer - speedMultFinal,0);
			if (findFishTimer == 0)
			{
				scr_PlaySfx(snd_KSW_FishFound);
				
				state = KSW_GameStates.catching;
				
				var pityRate = 3;
				for (var i = 0; i < pityRate; i++)
				{
					currentFish = currentFishPool[irandom_range(0,array_length(currentFishPool) - 1)];
					if ((!global.KSW_FishList[currentFish].isCaught) or ((global.KSW_FishList[currentFish].isCaught != 0) and (!global.KSW_FishList[currentFish].isCaughtShiny))) break;
				}
				
				var shinyRng = 1;
				if (global.KSW_FishList[currentFish].isCaught) shinyRng = irandom_range(0,max(31,1024 - (global.KSW_CurrentFishCombo * 20)));
				currentFishIsShiny = (shinyRng == 0);
				
				catchInput_CurrentList = scr_KSW_Game_GenerateCatchInputList(global.KSW_FishList[currentFish].rarity);
				catchInput_CurrentLineMax = array_length(catchInput_CurrentList);
				catchInput_SoundCount = -1;
				catchInput_NextLineTimer = 0;
				
				with (obj_KSW_Player) scr_ChangeSprite(sprFound);
				
				findFishTimer = -1;
			}
		}
		#endregion
		
		#region Catch Input - Next Line Timer
		if (catchInput_NextLineTimer != -1)
		{
			catchInput_NextLineTimer = max(catchInput_NextLineTimer - speedMultFinal,0);
			if (catchInput_NextLineTimer == 0)
			{
				catchInput_CurrentLine += 1;
				
				if (catchInput_CurrentLine != catchInput_CurrentLineMax)
				{
					var line = catchInput_CurrentList[catchInput_CurrentLine];
						
					failTimerTarget = max(failTimerMin,failTimerMax - ((catchInput_CurrentLine - 1) * failTimerMin));
					
					switch (line)
					{
						case KSW_CatchInputList.up:
						catchInput_SoundCount += 1;
						catchInput_UpTriggered = true;
						failTimer = failTimerTarget;
						
						catchInput_NextLineTimer = -1;
						break;
						
						case KSW_CatchInputList.down:
						catchInput_SoundCount += 1;
						catchInput_DownTriggered = true;
						failTimer = failTimerTarget;
						
						catchInput_NextLineTimer = -1;
						break;
						
						case KSW_CatchInputList.left:
						catchInput_SoundCount += 1;
						catchInput_LeftTriggered = true;
						failTimer = failTimerTarget;
						
						catchInput_NextLineTimer = -1;
						break;
						
						case KSW_CatchInputList.right:
						catchInput_SoundCount += 1;
						catchInput_RightTriggered = true;
						failTimer = failTimerTarget;
						
						catchInput_NextLineTimer = -1;
						break;
						
						case KSW_CatchInputList.wait:
						catchInput_NextLineTimer = catchInput_NextLineTimerMax;
						break;
					}
				}
				else
				{
					state = KSW_GameStates.catchAnimation;
					catchAnimationState = 0;
					catchAnimationTimer = 0;
					
					catchInput_NextLineTimer = -1;
				}
			}
		}
		#endregion
		
		#region State Ready Timer
		if (stateReadyTimer != -1)
		{
			stateReadyTimer = max(stateReadyTimer - speedMultFinal,0);
			if (stateReadyTimer == 0)
			{
				switch (state)
				{
					case KSW_GameStates.idle_Ready:
					state = KSW_GameStates.idle;
					canGoToMenu = true;
					canGoToFishbook = true;
					
					var notifID = global.KSW_NotifIDs[? "welcome"];
					if (global.KSW_NotifList[notifID].unlockScript()) scr_KSW_ObtainNotif(notifID);
					
					var notifID = global.KSW_NotifIDs[? "completion"];
					if (global.KSW_NotifList[notifID].unlockScript()) scr_KSW_ObtainNotif(notifID);
					
					var notifID = global.KSW_NotifIDs[? "legend"];
					if (global.KSW_NotifList[notifID].unlockScript()) scr_KSW_ObtainNotif(notifID);
					
					/*
					var notifID = global.KSW_NotifIDs[? "changelog"];
					if (global.KSW_NotifList[notifID].unlockScript()) scr_KSW_ObtainNotif(notifID);
					*/
					
					var stealthTutorialID = global.KSW_StealthTutorialIDs[? "catchComboShinyRate"];
					if (global.KSW_StealthTutorialList[stealthTutorialID].unlockScript()) scr_KSW_ObtainStealthTutorial(stealthTutorialID);
					
					with (obj_KSW_Player) scr_ChangeSprite(sprReady);
					
					stateReadyTimer = -1;
					break;
					
					case KSW_GameStates.waiting_Ready:
					state = KSW_GameStates.waiting;
					catchInput_CurrentList = -1;
					catchInput_CurrentLine = -1;
					catchInput_CurrentLineMax = -1;
					catchInput_SfxIndex = 0;
					findFishTimer = irandom_range(60,400);
					
					stateReadyTimer = -1;
					break;
					
					case KSW_GameStates.waiting_End:
					state = KSW_GameStates.idle_Ready;
					
					with (obj_KSW_Player) scr_ChangeSprite(sprReady);
					
					stateReadyTimer = stateReadyTimerMax;
					break;
				}
			}
		}
		#endregion
		
		#region Fail Timer
		if (failTimer != -1)
		{
			failTimer = max(failTimer - speedMultFinal,0);
			if (failTimer == 0)
			{
				failTimer = -1;
			}
		}
		#endregion
		
		#region Fail Timer Bar
		failTimerBarTextureX = (failTimerBarTextureX + 1) % failTimerBarTextureWidth;
		#endregion
		
		#region Phase Timer
		if (phaseTimer != -1)
		{
			phaseTimer = max(phaseTimer - speedMultFinal,0);
			if ((phaseTimer == 0) and (state == KSW_GameStates.idle))
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
		
		#region Decor Timer
		if (decorTimer != -1)
		{
			decorTimer = max(decorTimer - speedMultFinal,0);
			if (decorTimer == 0)
			{
				scr_KSW_ParticleSet_Eternity(irandom_range(0,88),irandom_range(160,320),layer_get_depth(layer_get_id("Collision")),-1);
				scr_KSW_ParticleSet_Eternity(irandom_range(152,240),irandom_range(160,320),layer_get_depth(layer_get_id("Collision")),-1);
				
				decorTimer = irandom_range(decorTimerMin,decorTimerMax);
			}
		}
		#endregion
	}
	
	#region Bubble
	bubbleIndex = (bubbleIndex + bubbleSpd) % bubbleNumber;
	#endregion
	
	#region Score
	if ((state == KSW_GameStates.idle) and (!canOffset))
	{
		if (flag_ScoreSfx)
		{
			scr_PlaySfx(snd_KSW_Score);
			
			flag_ScoreSfx = false;
		}
		
		displayedScore = lerp(displayedScore,global.levelScoreCurrent,.2);
	}
	#endregion
	
	#region Displayed Score - Y Offset Timer
	if (displayedScore_YOffsetTimer != -1)
	{
		displayedScore_YOffsetTimer = max(displayedScore_YOffsetTimer - speedMultFinal,0);
		if (displayedScore_YOffsetTimer == 0)
		{
			displayedScore_YOffsetTimer = -1;
		}
	}
	#endregion
	
	#region Catch Combo - Y Offset Timer
	if (catchCombo_YOffsetTimer != -1)
	{
		catchCombo_YOffsetTimer = max(catchCombo_YOffsetTimer - speedMultFinal,0);
		if (catchCombo_YOffsetTimer == 0)
		{
			catchCombo_YOffsetTimer = -1;
		}
	}
	#endregion
	
	#region Exit Timer
	if (exitTimer != -1)
	{
		exitTimer = max(exitTimer - speedMultFinal,0);
		if (exitTimer == 0)
		{
			scr_GoToRoom(exitTarget,false);
			
			exitTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Timers
	scr_Component_ButtonInputTimer_Step();
	#endregion
}

#region Hint Offset
hintOffset = lerp(hintOffset,32 * canOffset,.1);
#endregion