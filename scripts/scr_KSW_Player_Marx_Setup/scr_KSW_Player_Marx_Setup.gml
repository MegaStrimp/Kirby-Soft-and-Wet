///@description KSW - Player - Marx - Setup

function scr_KSW_Player_Marx_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Marx_State_Normal_Step;
	playerDraw = scr_KSW_Player_Marx_Draw;
	playerAnimationEnd = scr_KSW_Player_Marx_AnimationEnd;
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
	sprReady = spr_KSW_Player_Marx_Ready;
	sprReady_Rod = spr_KSW_Player_Marx_Ready_Rod;
	sprThrow = spr_KSW_Player_Marx_Throw;
	sprThrow_Rod = spr_KSW_Player_Marx_Throw_Rod;
	sprWait = spr_KSW_Player_Marx_Wait;
	sprWait_Rod = spr_KSW_Player_Marx_Wait_Rod;
	sprFound = spr_KSW_Player_Marx_Found;
	sprFound_Rod = spr_KSW_Player_Marx_Found_Rod;
	sprUp = spr_KSW_Player_Marx_Up;
	sprUp_Rod = spr_KSW_Player_Marx_Up_Rod;
	sprUpAnim = spr_KSW_Player_Marx_UpAnim;
	sprUpAnim_Rod = spr_KSW_Player_Marx_UpAnim_Rod;
	sprDown = spr_KSW_Player_Marx_Down;
	sprDown_Rod = spr_KSW_Player_Marx_Down_Rod;
	sprDownAnim = spr_KSW_Player_Marx_DownAnim;
	sprDownAnim_Rod = spr_KSW_Player_Marx_DownAnim_Rod;
	sprLeft = spr_KSW_Player_Marx_Left;
	sprLeft_Rod = spr_KSW_Player_Marx_Left_Rod;
	sprLeftAnim = spr_KSW_Player_Marx_LeftAnim;
	sprLeftAnim_Rod = spr_KSW_Player_Marx_LeftAnim_Rod;
	sprRight = spr_KSW_Player_Marx_Right;
	sprRight_Rod = spr_KSW_Player_Marx_Right_Rod;
	sprRightAnim = spr_KSW_Player_Marx_RightAnim;
	sprRightAnim_Rod = spr_KSW_Player_Marx_RightAnim_Rod;
	sprFailed = spr_KSW_Player_Marx_Failed;
	sprFailed_Rod = spr_KSW_Player_Marx_Failed_Rod;
	sprSuccess = spr_KSW_Player_Marx_Success;
	sprSuccess_Rod = spr_KSW_Player_Marx_Success_Rod;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	
	scr_ChangeSprite(sprReady);
	#endregion
}