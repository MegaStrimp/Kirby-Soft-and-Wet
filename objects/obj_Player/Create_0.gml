///@description Create

#region Position
if (global.playerSpawnXFinal != -1) x = global.playerSpawnXFinal;
if (global.playerSpawnYFinal != -1) y = global.playerSpawnYFinal;

global.playerSpawnXFinal = -1;
global.playerSpawnYFinal = -1;
#endregion

#region Initialize Variables
#region Physics Variables
hsp = 0;
hspPrev = 0;
vsp = 0;
vspPrev = 0;
#endregion

#region Character Variables
playerNum = 0;

characterSetup = true;
#endregion

#region Gameplay Variables
speedMult = 1;
speedMultFinal = 1;
localPause = false;

cameraXOffset = 0;
cameraYOffset = 0;

dirX = 1;
dirY = 1;

clampToView = true;
clampToRoom = true;

dmg = 1;
knockbackAngle = 90;
knockbackForce = 2;

grounded = false;
groundMaterial = -1;
groundSlopeType = -1;
wallAbove = false;

isWalking = false;
isRunning = false;
runBuffer = -1;
runBufferMax = 20;
runTurnBuffer = -1;
runTurnBufferMax = 12;
runTurnDirX = 0;
runParticleNum = 0;
runParticleTimer = -1;
runParticleTimerMin = 5;
runParticleTimerMax = 55;

downHeldBuffer = 0;
downHeldBufferPlatformMax = 8;

hasJumped = -1;
jumpCoyoteTimeBuffer = 0;
jumpCoyoteTimeBufferMax = 5;
jumpInputBuffer = 0;
jumpInputBufferMax = 5;
hasJumpLimit = true;
forceJump = false;

slideState = 0;

inhaledList = -1;
inhaleState = 0;
inhaleSfx = -1;
inhaleBufferTimer = -1;
inhaleBufferTimerMax = 22;

carryState = 0;

doorEntered = -1;
doorEnterBuffer = false;
doorFade = false;

currentAbility = global.playerAbility[playerNum];
attackInputBuffer = 0;
attackInputBufferMax = 10;
isAttacking = false;
attackIndex = -1;
attackIndexPrevious = -1;
attackString = "";
hasAttackAnimation = false;
canCancelAttackAnimation = false;
attackCanTurnSprite = true;
attackStopMovement = false;
attackStopGravity = false;
attackMakeFlash = false;
attackMakeLightInvincible = false;
attackMakeLightInvincibleTimer = -1;
attackMakeHeavyInvincible = false;
attackMakeHeavyInvincibleTimer = -1;
attackStopHspAfter = false;
attackStopVspAfter = false;
attackCancelTimer = -1;
attackCooldown = -1;
attackCooldownTarget = -1;
attackCooldownSpecial = -1;
attackCooldownSpecialTarget = -1;
attackCancelTargetState = -1;
canChangeAbility = true;

flashTimer = -1;
flashTimerTarget = 10;

attackNormalSlash2Buffer = false;

enum hurtStates
{
	none,
	hurt,
	invincible
}

hurtState = hurtStates.none;
hurtTimer = -1;
hurtTimer_Hurt = 15;
hurtTimer_Invin = 90;

deathState = 0;
deathStateTimer = -1;

localFreezeFrameTimer = -1;

lastHitProjectile = -1;

attackTypes = ds_list_create();
attackTypeResistances = ds_map_create();
#endregion
#endregion

#region Player Attributes
playerAttribute_CanWalk = true;
playerAttribute_CanJump = true;
playerAttribute_CanDuck = true;
playerAttribute_CanFloat = true;
#endregion

#region State Scripts
playerState_Setup = true;
playerStateStep = -1;
playerStateStep_End = -1;
playerStateRoomEnd = -1;

playerGetHit = scr_Player_GetHit;
playerGetHitObject = scr_Player_GetHit_Object;
playerGetHitContact = scr_Player_GetHit_Contact;
playerDeath = scr_Player_Death;

playerBeginStep = -1;
playerStep = -1;
playerEndStep = -1;
playerDraw = -1;
playerAnimationEnd = -1;
#endregion

#region Visual Variables
shakeX = 0;
shakeY = 0;

scale = 1;

drawDirX = 1;
drawDirY = 1;

drawXOffset = 0;
drawYOffset = 0;

imageSpeed = 1;
#endregion

#region Palette Variables
palSprite = -1;
palIndex = 1;
#endregion

#region Debug View Setup
if (global.debug)
{
	#region Setup
	debugView = dbg_view("Player",false);
	#endregion
	
	#region Position
	dbg_section("Position");
	dbg_text_input(ref_create(id,"x"),"X","r");
	dbg_text_input(ref_create(id,"y"),"Y","r");
	#endregion
	
	#region Adjust Debug Overlay Visibility
	with (obj_FrameworkControl) show_debug_log(debugLogActive);
	#endregion
}
#endregion