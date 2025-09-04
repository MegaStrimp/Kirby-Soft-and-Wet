///@description KSW - Player - Kirby - Animation End

function scr_KSW_Player_Kirby_AnimationEnd()
{
	switch (sprite_index)
	{
		case sprThrow:
		scr_ChangeSprite(sprWait);
		break;
		
		case sprUpAnim:
		scr_ChangeSprite(sprUp);
		break;
		
		case sprDownAnim:
		scr_ChangeSprite(sprDown);
		break;
		
		case sprLeftAnim:
		scr_ChangeSprite(sprLeft);
		break;
		
		case sprRightAnim:
		scr_ChangeSprite(sprRight);
		break;
		
		case sprSuccess:
		image_index = image_number - 1;
		break;
	}
}