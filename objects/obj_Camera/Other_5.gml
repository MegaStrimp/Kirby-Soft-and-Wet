///@description Room End

#region Reset Variables
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

scr_Camera_SetState(scr_Camera_State_FollowObject);
#endregion