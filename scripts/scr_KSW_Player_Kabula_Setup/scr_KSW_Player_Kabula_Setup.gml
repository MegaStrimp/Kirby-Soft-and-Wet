///@description KSW - Player - Kabula - Setup

function scr_KSW_Player_Kabula_Setup()
{
	#region Scripts
	playerState_Setup = true;
	playerStateStep = scr_KSW_Player_Kabula_State_Normal_Step;
	playerDraw = scr_KSW_Player_Kabula_Draw;
	playerAnimationEnd = scr_KSW_Player_Kabula_AnimationEnd;
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
	sprReady = spr_KSW_Player_Kabula_Ready;
	//sprReady_Rod = spr_KSW_Player_Kabula_Ready_Rod;
	sprThrow = spr_KSW_Player_Kabula_Throw;
	//sprThrow_Rod = spr_KSW_Player_Kabula_Throw_Rod;
	sprWait = spr_KSW_Player_Kabula_Wait;
	//sprWait_Rod = spr_KSW_Player_Kabula_Wait_Rod;
	sprFound = spr_KSW_Player_Kabula_Found;
	//sprFound_Rod = spr_KSW_Player_Kabula_Found_Rod;
	sprUp = spr_KSW_Player_Kabula_Up;
	//sprUp_Rod = spr_KSW_Player_Kabula_Up_Rod;
	sprUpAnim = spr_KSW_Player_Kabula_UpAnim;
	//sprUpAnim_Rod = spr_KSW_Player_Kabula_UpAnim_Rod;
	sprDown = spr_KSW_Player_Kabula_Down;
	//sprDown_Rod = spr_KSW_Player_Kabula_Down_Rod;
	sprDownAnim = spr_KSW_Player_Kabula_DownAnim;
	//sprDownAnim_Rod = spr_KSW_Player_Kabula_DownAnim_Rod;
	sprLeft = spr_KSW_Player_Kabula_Left;
	//sprLeft_Rod = spr_KSW_Player_Kabula_Left_Rod;
	sprLeftAnim = spr_KSW_Player_Kabula_LeftAnim;
	//sprLeftAnim_Rod = spr_KSW_Player_Kabula_LeftAnim_Rod;
	sprRight = spr_KSW_Player_Kabula_Right;
	//sprRight_Rod = spr_KSW_Player_Kabula_Right_Rod;
	sprRightAnim = spr_KSW_Player_Kabula_RightAnim;
	//sprRightAnim_Rod = spr_KSW_Player_Kabula_RightAnim_Rod;
	sprFailed = spr_KSW_Player_Kabula_Failed;
	//sprFailed_Rod = spr_KSW_Player_Kabula_Failed_Rod;
	sprSuccess = spr_KSW_Player_Kabula_Success;
	//sprSuccess_Rod = spr_KSW_Player_Kabula_Success_Rod;
	
	sprBobber = spr_KSW_Bobber_Red;
	sprBobberPal = spr_KSW_Bobber_Red_Pal;
	bobberIsShiny = false;
	sprBobberImageIndex = 0;
	sprBobberSpeed = 0;
	sprBobberImageNumber = 0;
	
	scr_ChangeSprite(sprReady);
	#endregion
}