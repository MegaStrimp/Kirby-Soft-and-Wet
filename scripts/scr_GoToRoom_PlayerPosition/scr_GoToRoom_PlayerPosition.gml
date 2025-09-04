///@description Go To Room - Player Position

function scr_GoToRoom_PlayerPosition(targetRoom,isPausable,playerSpawnX,playerSpawnY,activateTimer = -1)
{
	var fade = -1;
	
	if (!instance_exists(obj_Transition))
	{
		fade = scr_GoToRoom(targetRoom,isPausable,activateTimer);
		
		global.playerSpawnXFinal = playerSpawnX;
		global.playerSpawnYFinal = playerSpawnY;
	}
	
	return fade;
}