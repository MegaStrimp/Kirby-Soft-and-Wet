///@description Camera - Follow Object

function scr_Camera_FollowObject(followingObjectTarget,xOffsetTarget = 0,yOffsetTarget = 0)
{
	with (global.camera)
	{
		followingObject = followingObjectTarget;
		xOffset = xOffsetTarget;
		yOffset = yOffsetTarget;
		cameraX = followingObjectTarget.x - (global.gameWidth / 2) + xOffsetTarget;
		cameraY = followingObjectTarget.y - (global.gameHeight / 2) + yOffsetTarget;
	}
}