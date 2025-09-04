///@description Create

#region Initialize Variables
#region Physics Variables
hsp = 0;
vsp = 0;
#endregion

#region Gameplay Variables
speedMult = 1;
speedMultFinal = 1;
localPause = false;

pauseOutsideView = true;
canRespawn = true;

dirX = 1;
dirY = 1;

enemyID = -1;
hp = 1;
maxHp = -1;
hpHealthbar = -1;
hpHealthbarMiddle = -1;
hpHealthbarMiddleTimer = -1;
hpHealthbarShakeTimer = -1;
dmg = 1;
points = 1;
isBoss = false;
canBeOverkilled = true;

metaPointsOnDeath = 0;
metaPointsOnOverkill = 0;

grounded = false;
wallAbove = false;

collidedInhaleMask = -1;

canBreakLightInvincibility = false;
canBeHit = true;
canBeHitContact = true;
canBeHurt = true;
canHurtPlayer = true;
canHurtWhenHurt = false;

sprHurt = -1;
hurtFrame = 0;
hurtTimer = -1;
hurtTimerTarget = 10;

flashTimer = -1;
flashTimerTarget = 10;
flashTimerTargetDeath = 4;

contactHitTimer = -1;
contactHitTimerTarget = 60;

deathTimer = -1;
deathTimerMax = 40;

localFreezeFrameTimer = -1;

hitParticleIndex = -1;
hitAttackParticleIndex = -1;
deathParticleIndex = -1;
deathAttackParticleIndex = -1;

freezeFrameForce = 0;

lastHitProjectile = -1;
receivedAttackOwner = -1;
receivedKnockbackAngle = -1;

knockbackEffectsHurt = true;

canHaveKnockback = true;
hasKnockback = false;
knockbackResistance = 1;
knockbackTimer = -1;
knockbackTimerMax = 10;
knockbackCheckTimer = -1;
knockbackCheckTimerMax = 5;

knockbackIndex = -1;
wallKnockbackIndex = -1;

attackTypes = ds_list_create();
attackTypeResistances = ds_map_create();
#endregion

#region Visual Variables
shakeX = 0;
shakeY = 0;

scale = 1;

dirXEffectDraw = true;
dirYEffectDraw = true;
drawDirX = 1;
drawDirY = 1;

drawXOffset = 0;
drawYOffset = 0;

imageAngle = 0;

imageSpeed = 1;
#endregion

#region Palette Variables
palSprite = -1;
palIndex = 1;
#endregion
#endregion

#region AI Scripts
enemyState_Setup = true;

enemyAIStep = -1;
enemyAIStep_End = -1;

enemyGetInhaled = -1;
enemyGetHitSetup = scr_Enemy_GetHit_Setup;
enemyGetHit = scr_Enemy_GetHit;
enemyGetHitObject = scr_Enemy_GetHit_Object;
enemyDeath = scr_Enemy_Death;

enemyBeginStep = -1;
enemyStep = -1;
enemyEndStep = -1;
enemyDraw = -1;
enemyAnimationEnd = -1;

enemyWallXCollision = -1;
#endregion

#region Flags
flag_GetHit = false;
flag_GetHurt = false;
#endregion