///@description Create

#region Initialize Variables
#region Screen Variables
global.gameWidthTarget = 240;
global.gameHeightTarget = 160;
global.gameTileSize = 24;

global.fullscreen = true;

global.customCursorSprite = spr_KSW_UI_Shared_Cursor;
#endregion

#region Gameplay Variables
global.gameTitle = "Kirby ~ Soft & Wet";
global.versionNumber = "1.2.0";
global.versionSubtitle = "Android Hell";

global.pauseScript = scr_KSW_PauseScript;

global.maxPlayers = 1;

global.KSW_FishRarity[3] = 0;
global.KSW_FishTime[3] = 0;

scr_KSW_SetCharacters();
scr_KSW_SetBobbers();
scr_KSW_SetBaits();
scr_KSW_SetHats();
scr_KSW_SetSprayPaints();
scr_KSW_SetStages();
scr_KSW_SetSeries();
scr_KSW_SetFishes();
scr_KSW_SetAchievements();
scr_KSW_SetNotifs();
scr_KSW_SetStealthTutorials();
scr_KSW_SetMusic();

for (var i = 0; i < global.maxPlayers; i++)
{
	global.playerCharacter[i] = global.KSW_CharacterIDs[? "kirby"];
	global.KSW_PlayerEquippedSprayPaintShuffle[i] = true;
	global.KSW_PlayerEquippedHatShuffle[i] = true;
	global.KSW_EquippedBobberShuffle[i] = true;
	global.KSW_EquippedBobberID[i] = 0;
	global.KSW_EquippedBaitID[i] = 0;
	
	for (var h = 0; h < global.KSW_CharacterCount; h++)
	{
		global.KSW_PlayerEquippedSprayPaintID[i][h] = 0;
		global.KSW_PlayerEquippedHatID[i][h] = 0;
	}
}

global.KSW_PopupQueue = ds_list_create();
global.KSW_UnlockedCharacterCount = 0;
global.KSW_UnlockedBobberCount = 0;
global.KSW_UnlockedBaitCount = 0;
global.KSW_UnlockedHatCount = 0;
global.KSW_UnlockedSprayPaintCount = 0;
global.KSW_AvailableStageCount = 0;
global.KSW_UnlockedStageCount = 0;
global.KSW_CaughtTotalFishCount = 0;
global.KSW_CaughtTotalFishCount_Day = 0;
global.KSW_CaughtTotalFishCount_Afternoon = 0;
global.KSW_CaughtTotalFishCount_Night = 0;
global.KSW_CaughtUniqueFishCount = 0;
global.KSW_CaughtShinyFishCount = 0;
global.KSW_ObtainedAchievementCount = 0;
global.KSW_AvailableBobbers = ds_list_create();

global.KSW_CurrentPhase = KSW_Phases.day;
global.KSW_CurrentStageID = global.KSW_StageList[global.KSW_StageIDs[? "grassBeach"]];
global.KSW_ForcedPhase = KSW_Phases.none;
global.KSW_MainMenuSelection = KSW_MainMenu_Buttons.startFishing;
global.KSW_CurrentFishCombo = 0;
global.KSW_CurrentCoins = 0;

global.KSW_EnteredFishbook = false;
global.KSW_EnteredSettings = false;
global.KSW_EnteredStars = false;
global.KSW_EnteredAquarium = false;

global.KSW_DebugRig = -1;

playtimeAchievementTimerMax = 3600;
playtimeAchievementTimer = playtimeAchievementTimerMax;
#endregion
#endregion

#region Enums
#region Phases
enum KSW_Phases
{
	none,
	day,
	afternoon,
	night
}
#endregion
#endregion

#region Audio Setup
scr_KSW_AudioSetup();
#endregion

#region Set Window Caption
var flavorText = scr_KSW_SetFlavorText();

window_set_caption(global.gameTitle + " " + string(global.versionNumber) + " - " + string(flavorText));
#endregion

#region Load Data
scr_KSW_LoadGeneral("general.ini");
scr_KSW_SaveGeneral("general.ini");

scr_KSW_LoadConfig("config.ini");
scr_KSW_SaveConfig("config.ini");

window_set_fullscreen(global.fullscreen);

scr_KSW_DefaultKeybindings();
scr_KSW_LoadControls("controls.ini");

scr_KSW_LoadData("data1.ini");

scr_KSW_LoadMysteryTreats("mysteryTreats.ini");
#endregion

#region Discord Rich Presence Setup
var appId = "1344734236199878786";
global.discord = true;

if (!np_initdiscord(appId, true, np_steam_app_id_empty))
{
	global.discord = false;
	Error_msg = "Discord RPC unable to initialize";
}

scr_Discord_Setup(-1,-1,"icon",global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen");
#endregion