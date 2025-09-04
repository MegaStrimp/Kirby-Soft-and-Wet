///@description Enemy - Receive Freeze Frame

function scr_Enemy_ReceiveFreezeFrame(targetEnemy,freezeFrameAmount)
{
	targetEnemy.localFreezeFrameTimer = freezeFrameAmount;
}