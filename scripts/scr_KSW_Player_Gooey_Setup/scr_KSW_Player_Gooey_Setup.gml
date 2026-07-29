///@description KSW - Player - Gooey - Setup

function scr_KSW_Player_Gooey_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Gooey_State_Normal_Step;
	playerDraw = scr_KSW_Player_Gooey_Draw;
	playerAnimationEnd = scr_KSW_Player_Gooey_AnimationEnd;
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
	sprReady = spr_KSW_Player_Gooey_Ready;
	//sprReady_Rod = spr_KSW_Player_Gooey_Ready_Rod;
	sprThrow = spr_KSW_Player_Gooey_Throw;
	//sprThrow_Rod = spr_KSW_Player_Gooey_Throw_Rod;
	sprWait = spr_KSW_Player_Gooey_Wait;
	//sprWait_Rod = spr_KSW_Player_Gooey_Wait_Rod;
	sprFound = spr_KSW_Player_Gooey_Found;
	//sprFound_Rod = spr_KSW_Player_Gooey_Found_Rod;
	sprUp = spr_KSW_Player_Gooey_Up;
	//sprUp_Rod = spr_KSW_Player_Gooey_Up_Rod;
	sprUpAnim = spr_KSW_Player_Gooey_UpAnim;
	//sprUpAnim_Rod = spr_KSW_Player_Gooey_UpAnim_Rod;
	sprDown = spr_KSW_Player_Gooey_Down;
	//sprDown_Rod = spr_KSW_Player_Gooey_Down_Rod;
	sprDownAnim = spr_KSW_Player_Gooey_DownAnim;
	//sprDownAnim_Rod = spr_KSW_Player_Gooey_DownAnim_Rod;
	sprLeft = spr_KSW_Player_Gooey_Left;
	//sprLeft_Rod = spr_KSW_Player_Gooey_Left_Rod;
	sprLeftAnim = spr_KSW_Player_Gooey_LeftAnim;
	//sprLeftAnim_Rod = spr_KSW_Player_Gooey_LeftAnim_Rod;
	sprRight = spr_KSW_Player_Gooey_Right;
	//sprRight_Rod = spr_KSW_Player_Gooey_Right_Rod;
	sprRightAnim = spr_KSW_Player_Gooey_RightAnim;
	//sprRightAnim_Rod = spr_KSW_Player_Gooey_RightAnim_Rod;
	sprFailed = spr_KSW_Player_Gooey_Failed;
	//sprFailed_Rod = spr_KSW_Player_Gooey_Failed_Rod;
	sprSuccess = spr_KSW_Player_Gooey_Success;
	//sprSuccess_Rod = spr_KSW_Player_Gooey_Success_Rod;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	
	scr_ChangeSprite(sprReady);
	#endregion
}