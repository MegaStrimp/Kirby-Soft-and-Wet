///@description KSW - UI - Customize - Create Bubble

function scr_KSW_UI_Customize_CreateBubble(targetNumber,targetSprSmall,targetSprMedium,targetSprBig,targetSprText)
{
	bubble[bubbleCount] = instance_create_depth(0,room_height / 2,depth - 1,obj_KSW_UI_Customize_Bubble);
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