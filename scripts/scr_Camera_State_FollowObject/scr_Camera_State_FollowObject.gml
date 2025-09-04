///@description Camera - State - Follow Object

function scr_Camera_State_FollowObject()
{
	#region Camera Position
	if ((followingObject != -1) and (instance_exists(followingObject)))
	{
		var targetCameraX = followingObject.x - (global.gameWidth / 2) + xOffset - global.hudCameraXOffset;
		var targetCameraY = followingObject.y - (global.gameHeight / 2) + yOffset - global.hudCameraYOffset;
		
		cameraX = targetCameraX;
		cameraY = targetCameraY;
	}
	#endregion
	
	#region Set Camera
	cameraX = clamp(cameraX,min(0,xOffset),room_width + max(0,xOffset) - global.gameWidth) + shakeXFinal;
	cameraY = clamp(cameraY,min(0,yOffset),room_height + max(0,yOffset) - global.gameHeight) + shakeYFinal;
	
	if (cameraX1Limit != -1) cameraX = max(cameraX,cameraX1Limit);
	if (cameraX2Limit != -1) cameraX = min(cameraX,cameraX2Limit - global.gameWidth);
	if (cameraY1Limit != -1) cameraY = max(cameraY,cameraY1Limit);
	if (cameraY2Limit != -1) cameraY = min(cameraY,cameraY2Limit - global.gameHeight);
	
	camera_set_view_pos(mainView,cameraX,cameraY);
	#endregion
}