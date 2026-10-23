///@description KSW - Player - Starman - Setup

function scr_KSW_Player_Starman_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Starman_State_Normal_Step;
	playerDraw = scr_KSW_Player_Starman_Draw;
	playerAnimationEnd = scr_KSW_Player_Starman_AnimationEnd;
	#endregion
	
	#region Gameplay Variables
	threwBobber = false;
	
	bobberInWater = false;
	
	bobberShake = false;
	bobberXTarget = -100;
	bobberYTarget = -100;
	bobberXOffset = 0;
	bobberYOffset = 0;
	bobberShineIndex = 0;
	bobberShineSpd = sprite_get_speed(spr_KSW_UI_CaughtBox_Shine) / 60;
	bobberShineNumber = sprite_get_number(spr_KSW_UI_CaughtBox_Shine);
	
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
	sprReady = spr_KSW_Player_Starman_Ready;
	sprReady_Rod = spr_KSW_Player_Starman_Ready_Rod;
	sprThrow = spr_KSW_Player_Starman_Throw;
	sprThrow_Rod = spr_KSW_Player_Starman_Throw_Rod;
	sprWait = spr_KSW_Player_Starman_Wait;
	sprWait_Rod = spr_KSW_Player_Starman_Wait_Rod;
	sprFound = spr_KSW_Player_Starman_Found;
	sprFound_Rod = spr_KSW_Player_Starman_Found_Rod;
	sprUp = spr_KSW_Player_Starman_Up;
	sprUp_Rod = spr_KSW_Player_Starman_Up_Rod;
	sprUpAnim = spr_KSW_Player_Starman_UpAnim;
	sprUpAnim_Rod = spr_KSW_Player_Starman_UpAnim_Rod;
	sprDown = spr_KSW_Player_Starman_Down;
	sprDown_Rod = spr_KSW_Player_Starman_Down_Rod;
	sprDownAnim = spr_KSW_Player_Starman_DownAnim;
	sprDownAnim_Rod = spr_KSW_Player_Starman_DownAnim_Rod;
	sprLeft = spr_KSW_Player_Starman_Left;
	sprLeft_Rod = spr_KSW_Player_Starman_Left_Rod;
	sprLeftAnim = spr_KSW_Player_Starman_LeftAnim;
	sprLeftAnim_Rod = spr_KSW_Player_Starman_LeftAnim_Rod;
	sprRight = spr_KSW_Player_Starman_Right;
	sprRight_Rod = spr_KSW_Player_Starman_Right_Rod;
	sprRightAnim = spr_KSW_Player_Starman_RightAnim;
	sprRightAnim_Rod = spr_KSW_Player_Starman_RightAnim_Rod;
	sprFailed = spr_KSW_Player_Starman_Failed;
	sprFailed_Rod = spr_KSW_Player_Starman_Failed_Rod;
	sprSuccess = spr_KSW_Player_Starman_Success;
	sprSuccess_Rod = spr_KSW_Player_Starman_Success_Rod;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberPal = spr_KSW_Bobber_Red_Pal;
	bobberIsShiny = false;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	
	scr_ChangeSprite(sprReady);
	#endregion
}