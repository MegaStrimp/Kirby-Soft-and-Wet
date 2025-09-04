///@description Create

#region Initialize Variables
#region Camera Variables
cameraX = 0;
cameraY = 0;

cameraX1Limit = -1;
cameraX2Limit = -1;
cameraY1Limit = -1;
cameraY2Limit = -1;

shakeX = 0;
shakeY = 0;

isActive = true;
followingObject = -1;

xOffset = 0;
yOffset = 0;

cameraState_Setup = true;
cameraState = scr_Camera_State_FollowObject;
#endregion

#region Background Variables
backgroundSetup = true;
backgroundState = -1;
#endregion
#endregion