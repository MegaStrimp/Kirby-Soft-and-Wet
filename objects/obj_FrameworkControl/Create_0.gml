///@description Create

#region Randomize
randomize();
#endregion

#region Initialize Variables
#region Screen Variables
global.shaders = true;

global.gameWidthDefault = 240;
global.gameWidth = global.gameWidthDefault;
global.gameWidthTarget = global.gameWidthDefault;
global.gameHeightDefault = 160;
global.gameHeight = global.gameHeightDefault;
global.gameHeightTarget = global.gameHeightDefault;
global.gameTileSize = 16;

global.windowScale = 1;
global.windowScaleTarget = 1;

global.fullscreen = true;

global.screenPalette = -1;
global.screenPaletteKey = -1;
global.screenPaletteIndex = -1;

global.applicationSurfaceAutoDraw = true;
#endregion

#region Audio Variables
global.musicVolume = 1;
global.soundVolume = 1;

global.audioMuted = false;
#endregion

#region Music Variables
global.musicPlaying = -1;
#endregion

#region Gameplay Variables
playerNum = 0;

global.gameTitle = "StarDream Framework";
global.versionNumber = "1.0.0";
global.savedVersionNumber = global.versionNumber;

global.controlType = 0;

global.timePlayed_Frames = 0;
global.timePlayed_Seconds = 0;
global.timePlayed_Minutes = 0;
global.timePlayed_Hours = 0;

scr_UI_IconBindings();

global.playerLives = 3;
global.playerMaxLives = 99;

global.maxPlayers = 1;

global.playerSpawnXFinal = -1;
global.playerSpawnYFinal = -1;

global.levelScoreCurrent = 0;
global.levelTitle = "";

for (var i = 0; i < global.maxPlayers; i++)
{
	global.playerFirstTimeSetup[i] = true;
	global.playerAbility[i] = -1;
	global.playerHp[i] = -1;
	global.playerMaxHp[i] = -1;
	global.playerMana[i] = -1;
	global.playerMaxMana[i] = -1;
	global.playerSprayPaint[i] = -1;
	
	global.playerCharacterSetup[i] = -1;
	global.playerCharacter[i] = -1;
	global.playerSkinSetup[i] = -1;
	global.playerSkin[i] = -1;
	
	global.playerRespawn[i] = false;
}

scr_SetAttackTypes();
#endregion

#region Hud Variables
hudSetup = -1;
hudStep = -1;
hudDraw = -1;
hudDrawGUI = -1;

global.hudCameraXOffset = 0;
global.hudCameraYOffset = 0;
#endregion

#region Game Pause Variables
global.canGamePause = true;
global.gamePause = false;
global.gamePause_Leave = false;

gamePause_Page = -1;

gamePauseDelayTimer = -1;
gamePauseDelayTimerMax = 30;

gamePauseEndTimer = -1;

gamePauseAIExecute = -1;
gamePauseAIStep = -1;
gamePauseAIDraw = -1;
gamePauseAIDrawGUI = -1;
gamePauseAIDrawGUIBegin = -1;
gamePauseAIClean = -1;
#endregion

#region Screenshot Variables
global.screenshotBuffer = false;
global.screenshotTextTimer = -1;
global.screenshotTextTimerMax = 120;
#endregion

#region Misc Variables
global.debug = config_IsDebug;
global.demo = config_IsDemo;
global.isMobile = config_IsMobile;
debugLogActive = false;

global.selectedSave = "Save1.ini";
global.lastSelectedSave = global.selectedSave;
global.lastSelectedStage = "";

global.pause = false;
global.pauseScript = -1;
global.pauseFinal = false;
global.savePreviousRoom = true;
global.roomPrevious = rm_Startup;
global.roomNext = rm_Startup;
global.roomCheckpoint = -1;
global.hasStageEntityTracker = true;
global.stageEntityTracker = -1;
global.notifQueue = ds_list_create();

global.hasHud = true;

global.freezeFrame = false;
global.currentTimePausable = 0;
global.deltaTime = delta_time / 1000000;
global.speedMultGlobal = 1;
global.speedMultPlayer = 1;
global.speedMultEnemy = 1;
global.speedMultEnvironment = 1;
freezeFrameTimer = -1;
speedMultGlobalTimer = -1;
#endregion
#endregion

#region Debug View Setup
if (global.debug)
{
	#region Setup
	debugView = dbg_view("Framework Control",false);
	#endregion
	
	#region Screen
	dbg_section("Screen");
	dbg_drop_down(ref_create(global,"gameWidthTarget"),"160:160,240:240,480:480");
	dbg_drop_down(ref_create(global,"gameHeightTarget"),"144:144,160:160,270:270");
	dbg_drop_down(ref_create(global,"windowScaleTarget"),"1:1,2:2,3:3,4:4,5:5,6:6,7:7,8:8,9:9,10:10");
	#endregion
	
	#region Speed Multiplier
	dbg_section("Speed Multiplier");
	dbg_text_input(ref_create(global,"speedMultGlobal"),"Global","r");
	#endregion
	
	#region Adjust Debug Overlay Visibility
	show_debug_log(debugLogActive);
	#endregion
}
#endregion

#region Adapt Display Size To Monitor
global.windowScaleTarget = floor(scr_Screen_ScaleToScreenSize() / 1.2);
#endregion

#region Screen Setup
scr_Screen_Setup(global.gameWidth,global.gameHeight,global.windowScaleTarget);
#endregion

#region Font Setup
global.fontSpriteMain = font_add_sprite_ext(spr_Font_Main,"ABCDEFGHIJKLMNOPQRSTUVWXYZ.,'" + chr(47) + chr(64) + "1234567890&-",true,2);

global.fontSpriteDelfino = font_add_sprite_ext(spr_Font_SpriteDelfino,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890.:,;'" + chr(47) + "()!?+-*/=&",true,2);

global.fontAdvance = font_add_sprite_ext(fnt_Advance,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,-':;!?*()&" + chr(47) + chr(92) + "#~+÷{}[]" + chr(34) + "“”<>%_|`0123456789",true,0);
global.fontAdvanceGray = font_add_sprite_ext(fnt_Advance_Gray,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,-':;!?*()&" + chr(47) + chr(92) + "#~+÷{}[]" + chr(34) + "“”<>%_|`0123456789",true,0);
global.fontAdvanceSmall = font_add_sprite_ext(fnt_Advance_Small,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,-':;!?*()" + chr(47) + chr(92) + "~0123456789",true,0);
global.fontAdvanceSmallGray = font_add_sprite_ext(fnt_Advance_Small_Gray,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,-':;!?*()" + chr(47) + chr(92) + "~0123456789",true,0);

draw_set_font(global.fontSpriteMain);
#endregion

#region Set Macros
#macro mainView view_camera[0]

#macro config_IsDebug false
#macro DesktopDebug:config_IsDebug true
#macro MobileDebug:config_IsDebug true

#macro config_IsDemo false
#macro DesktopDemo:config_IsDemo true
#macro MobileDemo:config_IsDemo true

#macro config_IsMobile false
#macro Mobile:config_IsMobile true
#endregion

#region Create Necessary Objects
global.camera = instance_create_depth(0,0,-999,obj_Camera);
#endregion

#region Extensions
#region ZincLock Setup
global.zincLock_TargetTitle = "";
global.zincLock_FileFilter = "";
global.zincLock_TargetHeader = "";
global.zincLock_TargetAddress = -1;
global.zincLock_TargetLength = -1;
global.zincLock_TargetRoom = rm_Startup;

global.zincLock_SprConsole = -1;
global.zincLock_SprInvalidCard[0] = -1;
global.zincLock_SprCorrectCard = -1;
#endregion

#region Alivel Installer Setup
global.alivelInstaller_TargetUrl = "";
global.alivelInstaller_TargetVersionNumberUrl = "";
global.alivelInstaller_TargetRoom = rm_Startup;
#endregion

#region Discord Rich Presence Setup
global.discord = false;
#endregion

#region Retro Palette Swapper Setup
if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
#endregion

#region Scribble Setup
#endregion
#endregion