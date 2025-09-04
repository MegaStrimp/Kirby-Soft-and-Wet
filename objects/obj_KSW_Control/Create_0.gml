///@description Create

#region Initialize Variables
#region Screen Variables
global.shaders = true;

global.gameWidthTarget = 240;
global.gameHeightTarget = 160;
global.gameTileSize = 24;

global.windowScaleTarget = 1;

global.fullscreen = true;
#endregion

#region Gameplay Variables
global.gameTitle = "Kirby ~ Soft & Wet";
global.versionNumber = "0.9.0";

global.pauseScript = scr_KSW_PauseScript;

global.maxPlayers = 1;

for (var i = 0; i < global.maxPlayers; i++)
{
	global.playerCharacterSetup[i] = scr_KSW_Player_Kirby_Setup;
}

scr_KSW_SetFishes();
scr_KSW_SetNotifs();
scr_KSW_SetStealthTutorials();
scr_KSW_SetAchievements();

global.KSW_PopupQueue = ds_list_create();
global.KSW_CaughtTotalFishCount = 0;
global.KSW_CaughtTotalFishCount_Day = 0;
global.KSW_CaughtTotalFishCount_Afternoon = 0;
global.KSW_CaughtTotalFishCount_Night = 0;
global.KSW_CaughtUniqueFishCount = 0;
global.KSW_CaughtShinyFishCount = 0;
global.KSW_ObtainedAchievementCount = 0;

global.KSW_CurrentPhase = KSW_Phases.day;
global.KSW_MainMenuSelection = KSW_MainMenu_Buttons.startFishing;
global.KSW_CurrentFishCombo = 0;

global.KSW_EnteredFishbook = false;
global.KSW_EnteredSettings = false;
global.KSW_EnteredStars = false;

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

#region Adapt Display Size To Monitor
global.windowScaleTarget = floor(scr_Screen_ScaleToScreenSize() / 1.2);
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

scr_Discord_Setup(-1,-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion