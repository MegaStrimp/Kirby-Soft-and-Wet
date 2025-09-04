///@description Create

#region Initialize Variables
#region AI Scripts
attackAIBeginStep = -1;
attackAIStep = -1;
attackAIEndStep = -1;

enemyHitBehavior = -1;
enemyKnockbackBehavior = -1;

attackBeginStep = -1;
attackStep = -1;
attackEndStep = -1;
attackDraw = -1;
attackAnimationEnd = -1;
#endregion

#region Gameplay Variables
speedMult = 1;
speedMultFinal = 1;
localPause = false;
canBePaused = true;
#endregion

#region Attack Variables
owner = -1;
isEnemy = false;

dirX = 1;
dirY = 1;

dmg = 1;
knockback = 0;

attackEnemyHitParticleIndex = -1;
attackWallHitParticleIndex = -1;

followOwner = false;
followOwnerImageIndex = false;
destroyAfterAnimation = false;
destroyIfOwnerNotAttack = false;
destroyAfterHit = false;
destroyAfterCollideWall = false;
destroyAfterCollidePlatform = false;
destroyOutsideView = false;
destroyOutsideRoom = false;
destroyTimer = -1;
pauseAfterAnimation = false;
canBreakBlocks = false;
canBeFinisher = false;
canBreakLightInvincibility = false;
isMelee = false;
isMultiHit = false;
multiHitCount = 0;
multiHitFlag = false;
multiHitEvent = -1;
multiHitTimer = -1;
multiHitTimerMax = -1;
enemyHurtTimerMult = 1;
freezeFrameForce = 1;
canHitIfHurt = true;
canSetLastHitProjectile = true;
canBeParried = false;

bonusLootingAmount = 0;

knockbackAngle = 90;
knockbackForce = 2;

attackTypes = ds_list_create();
attackTypeResistances = ds_map_create();
#endregion

#region Visual Variables
shakeX = 0;
shakeY = 0;

autoScale = true;

scale = 1;

drawDirX = 1;
drawDirY = 1;

imageSpeed = 1;
#endregion
#endregion

#region Set Enums & Macros

#region Attack General Attributes
#region Player
#region Galaxia
#region Slash 1
#macro attackAttributes_Player_Galaxia_Slash1_Dmg 2
#macro attackAttributes_Player_Galaxia_Slash1_KnockbackForce 1
#macro attackAttributes_Player_Galaxia_Slash1_FreezeFrameForce 1
#endregion

#region Slash 2
#macro attackAttributes_Player_Galaxia_Slash2_Dmg 2
#macro attackAttributes_Player_Galaxia_Slash2_KnockbackForce 3
#macro attackAttributes_Player_Galaxia_Slash2_FreezeFrameForce 2
#endregion

#region Up Attack
#macro attackAttributes_Player_Galaxia_UpAttack_Dmg 3
#macro attackAttributes_Player_Galaxia_UpAttack_KnockbackForce 3
#macro attackAttributes_Player_Galaxia_UpAttack_FreezeFrameForce 2
#endregion

#region Down Attack Light
#macro attackAttributes_Player_Galaxia_DownAttackLight_Dmg 3
#macro attackAttributes_Player_Galaxia_DownAttackLight_KnockbackForce 2
#macro attackAttributes_Player_Galaxia_DownAttackLight_FreezeFrameForce 2
#endregion

#region Down Attack Heavy
#macro attackAttributes_Player_Galaxia_DownAttackHeavy_Dmg 3
#macro attackAttributes_Player_Galaxia_DownAttackHeavy_KnockbackForce 2
#macro attackAttributes_Player_Galaxia_DownAttackHeavy_FreezeFrameForce 2
#endregion

#region Mach Tornado
#macro attackAttributes_Player_Galaxia_MachTornado_Dmg 2
#macro attackAttributes_Player_Galaxia_MachTornado_KnockbackForce 1
#macro attackAttributes_Player_Galaxia_MachTornado_FreezeFrameForce 1
#endregion
#endregion

#region Buzzcut
#region Slash 1
#macro attackAttributes_Player_Buzzcut_Slash1_Dmg 1
#macro attackAttributes_Player_Buzzcut_Slash1_KnockbackForce 1
#macro attackAttributes_Player_Buzzcut_Slash1_FreezeFrameForce 1
#endregion

#region Slash 2
#macro attackAttributes_Player_Buzzcut_Slash2_Dmg 1
#macro attackAttributes_Player_Buzzcut_Slash2_KnockbackForce 1
#macro attackAttributes_Player_Buzzcut_Slash2_FreezeFrameForce 1
#endregion

#region Slash 3
#macro attackAttributes_Player_Buzzcut_Slash3_Dmg 1
#macro attackAttributes_Player_Buzzcut_Slash3_KnockbackForce 1
#macro attackAttributes_Player_Buzzcut_Slash3_FreezeFrameForce 1
#endregion
#endregion

#region Ghost Knight
#macro attackAttributes_GhostKnight_Stab_Dmg 2
#macro attackAttributes_GhostKnight_Stab_KnockbackForce 1
#macro attackAttributes_GhostKnight_Stab_FreezeFrameForce 1
#endregion

#region Peezer
#macro attackAttributes_Peezer_Claw_Dmg 2
#macro attackAttributes_Peezer_Claw_KnockbackForce 1
#macro attackAttributes_Peezer_Claw_FreezeFrameForce 1
#endregion
#endregion
#endregion
#endregion