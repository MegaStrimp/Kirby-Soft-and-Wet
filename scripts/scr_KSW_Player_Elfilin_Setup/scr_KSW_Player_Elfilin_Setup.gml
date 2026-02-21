///@description KSW - Player - Elfilin - Setup

function scr_KSW_Player_Elfilin_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Elfilin_State_Normal_Step;
	playerDraw = scr_KSW_Player_Elfilin_Draw;
	playerAnimationEnd = scr_KSW_Player_Elfilin_AnimationEnd;
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
	sprReady = spr_KSW_Player_Elfilin_Ready;
	sprReady_Rod = spr_KSW_Player_Elfilin_Ready_Rod;
	sprThrow = spr_KSW_Player_Elfilin_Throw;
	sprThrow_Rod = spr_KSW_Player_Elfilin_Throw_Rod;
	sprWait = spr_KSW_Player_Elfilin_Wait;
	sprWait_Rod = spr_KSW_Player_Elfilin_Wait_Rod;
	sprFound = spr_KSW_Player_Elfilin_Found;
	sprFound_Rod = spr_KSW_Player_Elfilin_Found_Rod;
	sprUp = spr_KSW_Player_Elfilin_Up;
	sprUp_Rod = spr_KSW_Player_Elfilin_Up_Rod;
	sprUpAnim = spr_KSW_Player_Elfilin_UpAnim;
	sprUpAnim_Rod = spr_KSW_Player_Elfilin_UpAnim_Rod;
	sprDown = spr_KSW_Player_Elfilin_Down;
	sprDown_Rod = spr_KSW_Player_Elfilin_Down_Rod;
	sprDownAnim = spr_KSW_Player_Elfilin_DownAnim;
	sprDownAnim_Rod = spr_KSW_Player_Elfilin_DownAnim_Rod;
	sprLeft = spr_KSW_Player_Elfilin_Left;
	sprLeft_Rod = spr_KSW_Player_Elfilin_Left_Rod;
	sprLeftAnim = spr_KSW_Player_Elfilin_LeftAnim;
	sprLeftAnim_Rod = spr_KSW_Player_Elfilin_LeftAnim_Rod;
	sprRight = spr_KSW_Player_Elfilin_Right;
	sprRight_Rod = spr_KSW_Player_Elfilin_Right_Rod;
	sprRightAnim = spr_KSW_Player_Elfilin_RightAnim;
	sprRightAnim_Rod = spr_KSW_Player_Elfilin_RightAnim_Rod;
	sprFailed = spr_KSW_Player_Elfilin_Failed;
	sprFailed_Rod = spr_KSW_Player_Elfilin_Failed_Rod;
	sprSuccess = spr_KSW_Player_Elfilin_Success;
	sprSuccess_Rod = spr_KSW_Player_Elfilin_Success_Rod;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	
	scr_ChangeSprite(sprReady);
	#endregion
}