///@description Create

#region Initialize Variables
#region Physics Variables
hsp = 0;
vsp = 0;
#endregion

#region Object Attributes
hp = -1;

speedMultFinal = 1;
localPause = false;

wallSetup = true;

hasTop = false;
isTop = false;
topWallSprite = -1;
topWallMask = spr_TopWallMask_24x4Originless;
topWallOwner = -1;
enemyWallOwner = -1;

groundMaterial = groundMaterials.none;
groundSlopeType = groundSlopeTypes.none;
groundPlatformType = groundPlatformTypes.none;

hitSfxIndex = -1;
deathIndex = -1;
deathParticleIndex = -1;
lastHitProjectile = -1;
freezeFrameForce = 3;

canBeHit = false;
receivedAttackOwner = -1;
receivedKnockbackAngle = -1;

destroyTimer = -1;
destroyTimerMax = 5;
#endregion
#endregion

#region State Scripts
stateSetup = true;
wallStateSetup = -1;
wallStateStep = -1;
#endregion

#region Set Macros & Enums
#region Ground Materials
enum groundMaterials
{
	none
}
#endregion

#region Ground Slope Types
enum groundSlopeTypes
{
	none,
	slope_1x1,
	slope_2x1,
	slope_3x1,
	slope_1x2,
	slope_1x3
}
#endregion

#region Ground Platform Types
enum groundPlatformTypes
{
	none,
	normal,
	heavy
}
#endregion
#endregion