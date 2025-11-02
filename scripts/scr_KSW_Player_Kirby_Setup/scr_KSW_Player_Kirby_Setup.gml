///@description KSW - Player - Kirby - Setup

function scr_KSW_Player_Kirby_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Kirby_State_Normal_Step;
	playerDraw = scr_KSW_Player_Kirby_Draw;
	playerAnimationEnd = scr_KSW_Player_Kirby_AnimationEnd;
	#endregion
	
	#region Gameplay Variables
	threwBobber = false;
	
	bobberInWater = false;
	
	bobberShake = false;
	bobberXTarget = -100;
	bobberYTarget = -100;
	bobberXOffset = 0;
	bobberYOffset = 0;
	
	baitSurface = -1;
	baitTexture = -1;
	baitWidth = 0;
	baitHeight = 0;
	baitX = 0;
	baitY = 0;
	baitHsp = .3;
	baitVsp = .4;
	baitAngle = 0;
	
	rodX = -100;
	rodY = -100;
	bobberX = bobberXTarget;
	bobberY = bobberYTarget;
	
	isShaking = false;
	#endregion
	
	#region Sprites
	sprReady = spr_KSW_Player_Kirby_Ready;
	sprThrow = spr_KSW_Player_Kirby_Throw;
	sprWait = spr_KSW_Player_Kirby_Wait;
	sprFound = spr_KSW_Player_Kirby_Found;
	sprUp = spr_KSW_Player_Kirby_Up;
	sprUpAnim = spr_KSW_Player_Kirby_UpAnim;
	sprDown = spr_KSW_Player_Kirby_Down;
	sprDownAnim = spr_KSW_Player_Kirby_DownAnim;
	sprLeft = spr_KSW_Player_Kirby_Left;
	sprLeftAnim = spr_KSW_Player_Kirby_LeftAnim;
	sprRight = spr_KSW_Player_Kirby_Right;
	sprRightAnim = spr_KSW_Player_Kirby_RightAnim;
	sprFailed = spr_KSW_Player_Kirby_Failed;
	sprSuccess = spr_KSW_Player_Kirby_Success;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	#endregion
	
	#region Palette Variables
	//palSprite = spr_MKSS_Player_MetaKnight_Normal_Base_Palette_Normal; STRIMPTODO
	#endregion
}