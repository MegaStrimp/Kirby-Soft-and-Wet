///@description KSW - Change Border Art

function scr_KSW_ChangeBorderArt(targetMappedID)
{
	var targetSprite = global.KSW_BorderArtList[targetMappedID].sprite;
	show_debug_message(targetSprite)
	
	switch (targetSprite)
	{
		case -2:
		global.borderArt_Sprite = global.KSW_BorderArtList[irandom_range(2,global.KSW_BorderArtCount - 1)].sprite;
		break;
		
		case -1:
		global.borderArt_Sprite = -1;
		break;
		
		default:
		global.borderArt_Sprite = targetSprite;
		break;
	}
	
}