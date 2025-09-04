///@description Go To Room - GameBoy - Player Position

function scr_GoToRoom_GameBoy_PlayerPosition(targetRoom,isPausable,playerSpawnX,playerSpawnY,activateTimer = -1,targetColor = 0)
{
	var fade = -1;
	
	if (!instance_exists(obj_Transition))
	{
		fade = scr_GoToRoom_GameBoy(targetRoom,isPausable,activateTimer,targetColor);
		
		global.playerSpawnXFinal = playerSpawnX;
		global.playerSpawnYFinal = playerSpawnY;
	}
	
	return fade;
}