///@description KSW - Menu - Title Screen - Create Bubble

function scr_KSW_Menu_TitleScreen_CreateBubble(targetNumber,targetSprSmall,targetSprMedium,targetSprBig,targetSprText)
{
	bubble[bubbleCount] = instance_create_depth(0,102,depth + 1,obj_KSW_Menu_TitleScreen_Bubble);
	with (bubble[bubbleCount])
	{
		sprSmall = targetSprSmall;
		sprMedium = targetSprMedium;
		sprBig = targetSprBig;
		sprText = targetSprText;
		
		index = other.bubbleCount;
		number = targetNumber;
	}
	
	bubbleCount += 1;
}