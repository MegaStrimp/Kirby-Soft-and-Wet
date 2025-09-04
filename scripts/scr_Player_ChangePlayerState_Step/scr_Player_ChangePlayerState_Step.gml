///@description Player - Change Player State - Step

function scr_Player_ChangePlayerState_Step(targetPlayer,targetState,targetEndState = -1)
{
	with (targetPlayer)
	{
		if (playerStateStep != targetState)
		{
			playerState_Setup = true;
			playerStateStep = targetState;
			
			if (playerStateStep_End != -1) script_execute(playerStateStep_End);
			playerStateStep_End = targetEndState;
		}
	}
}