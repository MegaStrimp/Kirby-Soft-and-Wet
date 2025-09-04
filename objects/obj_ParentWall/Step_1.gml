///@description Begin Step

#region Variables
speedMultFinal = global.speedMultGlobal * global.speedMultEnvironment * global.deltaTime;
localPause = global.pauseFinal;
#endregion

#region Destroy
if ((enemyWallOwner != -1) and (!instance_exists(enemyWallOwner))) instance_destroy();
#endregion

#region Wall Setup
if (wallSetup)
{
	if ((hasTop))
	{
		topWall = instance_create_depth(x,y,depth - 999,object_index);
		if (topWallSprite != -1)
		{
			topWall.visible = true;
			topWall.sprite_index = topWallSprite;
		}
		topWall.hsp = hsp;
		topWall.vsp = vsp;
		topWall.mask_index = topWallMask;
		topWall.image_xscale = image_xscale;
		topWall.hasTop = false;
		topWall.isTop = true;
		topWall.topWallOwner = id;
	}
	
	wallSetup = false;
}
#endregion

#region State Setup
if (stateSetup)
{
	if (wallStateSetup != -1) script_execute(wallStateSetup);
	
	stateSetup = false;
}
#endregion