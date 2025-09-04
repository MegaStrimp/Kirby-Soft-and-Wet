///@description Player - Change Player State - Room End

function scr_Player_ChangePlayerState_RoomEnd(targetPlayer,targetState)
{
	with (targetPlayer)
	{
		if (playerStateRoomEnd != targetState)
		{
			playerState_Setup = true;
			playerStateRoomEnd = targetState;
		}
	}
}